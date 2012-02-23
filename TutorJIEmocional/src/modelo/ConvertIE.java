/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.*;
import java.util.regex.Pattern;

import org.odftoolkit.simple.SpreadsheetDocument;
import org.odftoolkit.simple.table.Cell;
import org.odftoolkit.simple.table.Table;

/**
 *
 * @author edwardcacho
 */
public class ConvertIE {
    
    /**
     * Indica el numero de fila y columna 
     * de la celda del primer puntaje a colocar
     * del archivo "iemocional.ods"
     * [0] = escala 1
     */
    
    public static final int ODS_ROWS_ESCALAS[][] = {
        {4,2},
        {27,2},
        {49,2},
        {69,2},
        {85,2}, //5
        {99,2},
        {118,2},
        {137,2},
        {152,2},
        {170,2},//10
        {185,2},
        {204,2},
        {221,2},
        {234,2},
        {250,2},//15
        {265,2},
        {283,2},
        {297,2},
        {333,2},
        {349,2},//20
        {361,2}
    };
    
    /**
     * Convierte el fichero .jti generado por JIEmocional
     * a un fichero ods con detalle
     * @param plainfile 
     */
    
    public static void convert(File plainfile) 
            throws FileNotFoundException, IOException, Exception
    {
        if( !formatoCorrecto(plainfile) )
            throw new IllegalArgumentException("Fichero con formato desconocido");
        
        //DATOS
        Usuario user = new Usuario();
        user.load(plainfile);
        
        //TEST
        SpreadsheetDocument doc;
        doc = SpreadsheetDocument.loadDocument("iemocional.ods");
        Table tblDetalle = doc.getTableByName("detalle");
        
        int limit = user.data.length;
        int row, col;
        row = ODS_ROWS_ESCALAS[0][0]-1;
        col = ODS_ROWS_ESCALAS[0][1];
        int oldIdEscala = 1;
        for(int i = 0; i < limit; i++){
            int idEscala = user.data[i][0];
            
            if( oldIdEscala == idEscala ){
                row++;
                Cell celda = tblDetalle.getCellByPosition(col + user.data[i][3], row);
                celda.setDisplayText( String.valueOf( user.data[i][2]) );
            }else{
                oldIdEscala = idEscala;
                row = ODS_ROWS_ESCALAS[idEscala-1][0];
                col = ODS_ROWS_ESCALAS[idEscala-1][1];
                
                Cell celda = tblDetalle.getCellByPosition(col + user.data[i][3], row);
                celda.setDisplayText( String.valueOf( user.data[i][2]) );
            }
        }
        /*
        foreach objEscala in escalas:
            for objItem in objEscala.items:
                row = ODS_ROWS_ESCALAS[idEscala][0]
                col = ODS_ROWS_ESCALAS[idEscala][1]
                
                cell = getCellByPosition(col, row);
                cell.setValue( user.value );
         
        */
        
        doc.save( plainfile.getName() + ".ods");
        //doc.ge
        
    }
    
    /**
     * TRUE si el archivo .jti es correcto, tiene el formato correcto
     * @param plainfile
     * @return
     * @throws FileNotFoundException
     * @throws IOException 
     */
    
    public static boolean formatoCorrecto(File plainfile) 
            throws FileNotFoundException, IOException
    {
        boolean correcto = true;
        
        BufferedReader br = new BufferedReader(new FileReader(plainfile));
        String linea = br.readLine();
        String regex = "^[0-9]{1,2}-[0-9]{1,3}-[0123]-[0123]$";
        while( linea != null){
            if( !Pattern.matches(regex, linea) ){
                correcto = false;
                break;
            }
            linea = br.readLine();
        }
        
        return correcto;
    }
    
}
