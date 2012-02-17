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
 */
public class Escala {
    private int idEscala;
    private String nombre;
    private String descripcion;
    
    private String indicadores[];
    
    private List<Item> listItems;
    
    public static final int TOTAL_ESCALAS = 21;

    public Escala() {
        idEscala = -1;
        nombre = "";
        descripcion = "";
        indicadores = null;
        listItems = new ArrayList();
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
