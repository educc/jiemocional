/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.File;
import java.util.ArrayList;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.table.AbstractTableModel;

/**
 * Modelo para JTable de archivos JTI
 * @author edward
 */
public class JTIModel extends AbstractTableModel{
    private ArrayList<Object[]> data;
    private String[] headers = {"Nº","Archivo"};
    
    public static final int DATA_NUM_ROW = 0;
    //public static final int DATA_IMAGE = 99;
    public static final int DATA_FILE = 1;
    
    public static final String IMAGE_OK = "/vista/recursos/ok.png"; //ya convertido
    public static final String IMAGE_LISTO = "/vista/recursos/listo.png"; //fichero valido
    public static final String IMAGE_ERROR = "/vista/recursos/error.png"; //fichero no valido

    public JTIModel() {
        data = new ArrayList();
    }
    
    public void appendRow(File file, String pathImage){
        Object[] row = new Object[2];
                   
        row[0] = new Integer( data.size()+1 );
        row[1] = file;
        data.add(row);
    }

    @Override
    public String getColumnName(int column) {
        return headers[column];
    }

    public int size(){
        return data.size();
    }
    
    public boolean isEmpty(){
        return data.isEmpty();
    }
    
    public File get(int index){
        return (File) data.get(index)[DATA_FILE];
    }
    
    public void setImage(int index, String pathImage){
       //data.get(index)[DATA_IMAGE] = null;
       //data.get(index)[DATA_IMAGE] = new ImageIcon(pathImage);
    }
    
    public void remove(int index){
        data.remove(index);
        
        Integer i = 1;
        for(Object[] row : data){
            row[DATA_NUM_ROW] = i;
            i += 1;
        }
    }

    @Override
    public Class getColumnClass(int columnIndex) {
        return getValueAt(0, columnIndex).getClass();
    }

    @Override
    public boolean isCellEditable(int rowIndex, int columnIndex) {
        return false;
    }
    
    @Override
    public int getRowCount() {
        return data.size();
    }

    @Override
    public int getColumnCount() {
        return headers.length;
    }

    @Override
    public Object getValueAt(int row, int col) {
        return data.get(row)[col];
    }
    
}
