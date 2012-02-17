/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.instrument.IllegalClassFormatException;
import java.util.IllegalFormatException;


/**
 *
 * @author edward
 */
public class Usuario {
    private int data[][];
    private int length;
    
    public static final String NAME_FILE = "data.jti";
    
    /*
     * column 1 = id escala
     * column 2 = id item
     * column 3 = value item
     * column 4 = numero de indicador [0-3]
     */
    
    public Usuario(){
        data = new int[ Item.TOTAL_ITEMS ][ 4 ];
        length = 0;
    }
    
    /**
     * Cero si no hay ningun registro
     * @return 
     */
    public int lastEscala(){
        int limit = Item.TOTAL_ITEMS;
        int idEscala = 0;
        for(int i = limit-1; i >= 0 && idEscala == 0; i--){
            if( data[i][0] != 0){
                idEscala = data[i][0];
            }
        }
        return idEscala;
    }
    
    /**
     * TRUE si se ha terminado el test
     * @return 
     */
    
    public boolean isCompletado(){
        int idescala = lastEscala();
        return idescala == Escala.TOTAL_ESCALAS;
    }
    
    /**
     * TRUE si el test esta vacio
     * @return 
     */
    
    public boolean isEmpty(){
        int idEscala = lastEscala();
        return idEscala == 0;
    }
    
    /**
     * Agrega informacion del usuario.
     * @param idEscala
     * @param idItem
     * @param valueItem
     * @throws IllegalArgumentException 
     */
    
    public void addData(int idEscala, int idItem, int valueItem, int nindicador)
            throws IllegalArgumentException
    {
        if( length > Item.TOTAL_ITEMS)
            throw new IllegalArgumentException("Ya no se permite agregar más items.");
        data[length][0] = idEscala;
        data[length][1] = idItem;
        data[length][2] = valueItem;
        data[length][3] = nindicador;
        length++;
    }
    
    /**
     * Guarda en un fichero de texto plano
     * con el nombre NAME_FILE en el directorio
     * del programa
     * @throws IOException 
     */
    
    public void save() throws IOException{
        File file = new File(NAME_FILE);
        save(file);
    }
    
    /**
     * Guarda en un fichero de texto plano
     * @throws IOException 
     */
    
    public void save(File file) throws IOException{
        if( file.exists() ){
            file.delete();
            file.createNewFile();
        }
        
        FileWriter fw = new FileWriter(file);
        
        int limit = Item.TOTAL_ITEMS;
        for(int i = 0; i < limit; i++){
            String line = 
                    String.valueOf(data[i][0]) + "-" +
                    String.valueOf(data[i][1]) + "-" +
                    String.valueOf(data[i][2]) + "-" + 
                    String.valueOf(data[i][3]);
            
            fw.write(line + "\n");
        }
        fw.close();
    }
    
    /**
     * Arreglo de 21 filas, con los puntajes
     * totales por escala
     * [0] = escala 1
     * [1] = escala 2 ...
     * @return 
     */
    
    public int[] puntajes(){
        int[] puntajes = new int[Escala.TOTAL_ESCALAS];
        
        int limit = Item.TOTAL_ITEMS;
        for(int i = 0; i < limit; i++){
            int idescala = data[i][0]-1;
            puntajes[idescala] += data[i][2];
        }
        return puntajes;
    }
    
    /**
     * Arreglo de 21 filas, con los puntajes
     * maximos por escala
     * [0] = escala 1
     * [1] = escala 2 ...
     * @return 
     */
    
    public int[] maxPuntajes(){
        int[] puntajes = new int[Escala.TOTAL_ESCALAS];
        
        int limit = Item.TOTAL_ITEMS;
        for(int i = 0; i < limit; i++){
            int idescala = data[i][0]-1;
            puntajes[idescala] += 3;
        }
        return puntajes;
    }
    
    /**
     * 
     * @throws FileNotFoundException
     * @throws IOException
     * @throws IllegalClassFormatException 
     */
    
    public void load() 
            throws FileNotFoundException, IOException, IllegalClassFormatException
    {
        File file = new File(NAME_FILE);
        if( file.exists()){
            BufferedReader br = new BufferedReader(new FileReader(file));
            String line = br.readLine();
            while( line != null){
                String[] aux = line.split("-");
                if( aux.length != 4){
                    throw new IllegalClassFormatException
                            ("El fichero no tiene el formato correcto.");
                }
                try{
                    int idEscala = Integer.parseInt(aux[0]);
                    int idItem = Integer.parseInt(aux[1]);
                    int value = Integer.parseInt(aux[2]);
                    int nindicador = Integer.parseInt(aux[3]);

                    if(idEscala + idItem + value != 0)
                        this.addData(idEscala, idItem, value, nindicador);
                }catch(NumberFormatException ex){
                    throw new IllegalClassFormatException
                            ("El fichero no tiene el formato correcto.");
                }
                line = br.readLine();
            }    
        }
        
    }
}
