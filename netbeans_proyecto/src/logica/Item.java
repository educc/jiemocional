/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @author edward
 */
public class Item {
    private int id;
    private String nombre;
    
    private int[] valorIndicador;
    
    public static final int TOTAL_ITEMS = 261;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int[] getValorIndicador() {
        return valorIndicador;
    }

    public void setValorIndicador(int[] valorIndicador) {
        this.valorIndicador = valorIndicador;
    }

}
