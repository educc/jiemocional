/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import modelo.ConvertIE;
import modelo.JTIModel;
import vista.AboutMeDialog;
import vista.App;
import vista.MainFrame;

/**
 *
 * @author edward
 */
public class MainFrameController {
    private MainFrame frame;
    private JTIModel model;
    
    public MainFrameController(MainFrame frame){
        this.frame = frame;
        initActions();
    }
    
    private void initActions(){
        model = new  JTIModel();
        
        frame.tableArchivos.setModel(model);
        frame.btnAgregar.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    actionAbrirArchivo(e);
                } catch (IOException ex) {
                    System.out.println(ex.toString());
                }
            }
        });
        
        frame.btnQuitar.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                actionQuitarArchivo(e);
            }
        });
        
        frame.btnConvertir.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                actionConvertir(e);
            }
        });
        
        frame.btnAboutMe.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent ae) {
                actionShowAboutMe(ae);
            }
        });
        
        frame.btnBuscar.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent ae) {
                JFileChooser fchooser = new JFileChooser();
                fchooser.setMultiSelectionEnabled(false);
                fchooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
                fchooser.setApproveButtonText("Elegir directorio");
                fchooser.setDialogTitle("Selecciona el directorio de guardado");

                int option = fchooser.showOpenDialog(frame);
                if (option == JFileChooser.APPROVE_OPTION) {
                    String path = fchooser.getSelectedFile().getAbsolutePath();
                    frame.txtDirectorio.setText(path);
                }
            }
        });
    }
    
    /**
     * TRUE fichero convertido, ods generado
     * @param file
     * @return 
     */
    
    private boolean convertirFichero(File file, String path){
        boolean correcto = true;
        String strError = "";
        try {
            int indexDot = file.getName().lastIndexOf(".");
            String auxname = file.getName();
            if(indexDot != -1){
                auxname = auxname.substring(0, indexDot);
            }
            String filename = path + File.separator + auxname + ".ods";
            ConvertIE.convert(file, filename);
        }catch(Exception ex){
            correcto = false;
        }
        return correcto;
        /*} catch (FileNotFoundException ex) {
            strError = "Archivo no encontrado.\n";
        } catch (IOException ex) {
            strError += "Error desconocido: " + ex.toString();
            strError += "\n";
        } catch (Exception ex) {
            strError += "Error desconocido: " + ex.toString();
            strError += "\n";
        }
        System.out.println(strError);
        //JOptionPane.showMessageDialog(this, strError, App.NAME, JOptionPane.INFORMATION_MESSAGE);*/
    }
    
    private void convertirTodo(String path){
        int limit = model.size();
        
        for(int i = 0; i < limit; i++){
            File afile = (File) model.get(i);
            if( convertirFichero(afile, path) ){
                model.setImage(i, JTIModel.IMAGE_OK);
            }else{
                model.setImage(i, JTIModel.IMAGE_ERROR);
            }
        }
    }
    
    //ACCIONES DE BOTONES
    
    private void actionShowAboutMe(ActionEvent e){
        AboutMeDialog frm = new AboutMeDialog(frame, true);
        frm.setVisible(true);
    }
    
    private void actionConvertir(ActionEvent e){
        if( !model.isEmpty() ){
            String path = frame.txtDirectorio.getText();
            frame.btnConvertir.setEnabled(false);
            convertirTodo(path);
            frame.btnConvertir.setEnabled(true);
        }else{
            JOptionPane.showMessageDialog
                    (frame, "Debe al menos abrir un archivo para convertir.", 
                    App.NAME, JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
    private void actionAbrirArchivo(ActionEvent e) throws IOException{
        JFileChooser fchooser = new JFileChooser();
        fchooser.setMultiSelectionEnabled(true);
        FileNameExtensionFilter filter = new FileNameExtensionFilter(
        "Archivos jti", "jti");
        fchooser.setFileFilter(filter);
        int option = fchooser.showOpenDialog(frame);
        if ( option == JFileChooser.APPROVE_OPTION ){
            File files[] = fchooser.getSelectedFiles();
            
            int limit = files.length;
            for(int i = 0; i < limit; i++){
                if( ConvertIE.formatoCorrecto(files[i]) ){
                    model.appendRow(files[i], JTIModel.IMAGE_LISTO);    
                }else{
                    model.appendRow(files[i], JTIModel.IMAGE_ERROR);    
                }
            }
            frame.tableArchivos.updateUI();
        }
    }
    
    private void actionQuitarArchivo(ActionEvent e){
        int index = 0;//frame.listArchivos.getSelectedIndex();
        if( index != -1){
            model.remove( index );
            if( !model.isEmpty() ){
                //frame.tableArchivos.set
            }
            frame.tableArchivos.updateUI();
        }else{
            JOptionPane.showMessageDialog
                    (frame, "Debe seleccionar items", 
                    App.NAME, JOptionPane.INFORMATION_MESSAGE);
        }
    }
}
