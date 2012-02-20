/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import datos.Conexiondb;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author edward
 */
public class Datadb {
    private Conexiondb db;
    
    public Datadb() throws SQLException, ClassNotFoundException{
        String strRutadb = 
                System.getProperty("user.dir") + File.separator + 
                "ie.db";
        //strRutadb = getClass().getResource("/datos/ie.db").toExternalForm();
        
        //System.out.println(strRutadb);
        
        db = new Conexiondb("",0, strRutadb,"","", Conexiondb.SQLITE);
        db.abrirConexion();
    }
    
    public String[] nombresEscalas() throws SQLException{
        String[] nombres = new String[ Escala.TOTAL_ESCALAS];;
        String strsql = 
                " SELECT nombre FROM iem_escala";
        
        ResultSet rs = db.consultar(strsql);
        int i = 0;
        while( rs.next() ){
            nombres[i] = rs.getString("nombre");
            i++;
        }
        return nombres;
    }
    
    public Escala findEscalaById(int id) throws SQLException{
        Escala escala = null;
        
        String strsql = 
                " SELECT nombre, descripcion, " +
                " indicador1, indicador2, indicador3, indicador4 " + 
                " FROM iem_escala WHERE id_escala=" + id;
        
        ResultSet rs = db.consultar(strsql);
        if( rs.next() ){
            escala = new Escala();
            String[] strInd = new String[4];
            
            escala.setIdEscala(id);
            escala.setNombre            (rs.getString("nombre"));
            escala.setDescripcion       (rs.getString("descripcion"));
            strInd[0] =                 (rs.getString("indicador1"));
            strInd[1] =                 (rs.getString("indicador2"));
            strInd[2] =                 (rs.getString("indicador3"));
            strInd[3] =                 (rs.getString("indicador4"));
            
            escala.setIndicadores       (strInd);
            escala.setListItems         (findItemByIdEscala(id));
        }
        return escala;
    }
    
    public List<Item> findItemByIdEscala(int idescala) throws SQLException{
        List<Item> listItems = new ArrayList();
        
        String strsql = 
                " SELECT id_item, nombre, indicador1, " +
                " indicador2, indicador3, indicador4 " + 
                " FROM iem_item WHERE id_escala=" + idescala;
        
        ResultSet rs = db.consultar(strsql);
        while(rs.next()){
            Item item = new Item();
            int[] valuesInd = new int[4];
            
            item.setId              (rs.getInt("id_item"));
            item.setNombre          (rs.getString("nombre"));
            
            valuesInd[0] =          (rs.getInt("indicador1"));
            valuesInd[1] =          (rs.getInt("indicador2"));
            valuesInd[2] =          (rs.getInt("indicador3"));
            valuesInd[3] =          (rs.getInt("indicador4"));
            
            item.setValorIndicador(valuesInd);
            listItems.add(item);
        }
        return listItems;
    }
    
    public static void main(String args[]) throws SQLException, ClassNotFoundException{
        Datadb db = new Datadb();
        
        String[] aux = db.nombresEscalas();
        int limit = aux.length;
        for(int i = 0; i < limit; i++){
            System.out.println(aux[i]);
        }
    }
    
}
