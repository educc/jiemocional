/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author edward
 * @version 1.0
 */
public class Escala {
    private int idEscala;
    private String nombre;
    private String descripcion;
    
    private String indicadores[];
    
    private List<Item> listItems;
    
    /*Estructura de intervalos:
     * fila[x][0]
     *      0 = menor igual
     *      1 = mayor igual
    * fila [0] = escala id = 1
    *       optimo      ini: [0][1]
    *       diestro     ini: [0][2]
    *       vulnerable  ini: [0][3]
    *       cautela     ini: [0][4] 
    * fila [1] = escala id = 2
    * 
    */
    public static final int INTERVALOS[][] = {
        //0-5
        {0,2,7,15,54},
        {0,6,13,20,51},
        {0,2,7,14,42},
        {1,29,24,19,0},
        {1,20,17,13,0},
        //6-10
        {1,28,22,15,0},
        {1,33,17,21,0},
        {1,24,19,13,0},
        {1,34,28,21,0},
        {1,28,23,18,0},
        //11-15
        {1,34,27,20,0},
        {1,33,29,21,0},
        {1,23,19,13,0},
        {1,29,23,18,0},
        {1,26,21,16,0},
        //16-20
        {1,34,29,24,0},
        {1,20,17,13,0},
        {0,8,18,31,96},
        {1,27,22,17,0},
        {1,20,17,14,0},
        //20
        {1,20,17,13,0}
    };
    
    public static final int TOTAL_ESCALAS = 21;

    public Escala() {
        idEscala = -1;
        nombre = "";
        descripcion = "";
        indicadores = null;
        listItems = new ArrayList();
    }
    
    /**
     * Optimo, diestro, vulnerable, cautela
     * @param idEscala
     * @param puntaje
     * @return
     * @throws IllegalArgumentException 
     */
    
    
    public static String getRendimiento(int idEscala, int puntaje)
            throws IllegalArgumentException
    {
        String strRendimientos[] = {"Óptimo","Diestro","Vulnerable","Cautela"};
        String strOut = "";
        
        if( idEscala < 1 && idEscala > 21)
            throw new IllegalArgumentException("ID Escala desconocido");
        idEscala--;
        int limit = INTERVALOS[idEscala].length;
        for(int i = 1; i < limit; i++){
            if( INTERVALOS[idEscala][0] == 0){ //usar menor igual
                if( puntaje <= INTERVALOS[idEscala][i] ){
                    strOut = strRendimientos[i-1];
                    break;
                }
            }else{ //usar mayor igual
                if( puntaje >= INTERVALOS[idEscala][i] ){
                    strOut = strRendimientos[i-1];
                    break;
                }
            }
        }
        return strOut;
    }

    public List<Item> getListItems() {
        return listItems;
    }

    public void setListItems(List<Item> listItems) {
        this.listItems = listItems;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdEscala() {
        return idEscala;
    }

    public void setIdEscala(int idEscala) {
        this.idEscala = idEscala;
    }

    public String[] getIndicadores() {
        return indicadores;
    }

    public void setIndicadores(String[] indicadores) {
        this.indicadores = indicadores;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
