/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/**
 *
 * @author edward
 */
public class SaveFile {


    // guardar
     private void writeObject(ObjectOutputStream stream) throws IOException{
      //serializa el objeto como siempre (todos los atributos menos los estaticos)
      stream.defaultWriteObject();
      //ahora el atributo estático
      //stream.write(atributoEstatico);
     }

    // leer objeto
     private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException{
      stream.defaultReadObject();
      //atributoEstatico= stream.read();
     }


    //ahora el ejemplo para guardar los objetos en un fichero
     public boolean save(Object obj){
          try {
               //fichero en el que se guardará el objeto
               FileOutputStream file = new FileOutputStream("prueba");
               //canal de salida del fichero
               ObjectOutputStream os;
               os = new ObjectOutputStream(file);
               //escribimos el objeto en el fichero
               os.writeObject(obj);
               //cerramos el canal de salida y el fichero
               os.close();
               file.close();
          } catch (IOException e) {
            //e.printStackTrace();
            return false;
          }

          return true;
     }

    //Metodo para cargar el objeto anteriormente guardado 
     public Object load(){
          Object obj;
          try {
           FileInputStream fis = new FileInputStream("prueba");
           ObjectInputStream ois = new ObjectInputStream (fis);

           obj =(Object) ois.readObject();

           ois.close();
           fis.close();
             } catch (IOException e) {

           return null;
          } catch (ClassNotFoundException e) {

           return null;
          }

          return obj;
     }
 
}
