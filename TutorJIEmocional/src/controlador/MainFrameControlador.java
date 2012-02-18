/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import javax.swing.DefaultListModel;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import vista.App;
import vista.MainFrame;

/**
 *
 * @author edward
 */
public class MainFrameControlador {
    private MainFrame frame;
    private DefaultListModel<File> model;
    
    public MainFrameControlador(MainFrame frame){
        this.frame = frame;
        //listFiles = new ArrayList();
        initActions();
    }
    
    private void initActions(){
        model = new  DefaultListModel();
        
        frame.listArchivos.setModel(model);
        frame.btnAgregar.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                actionAbrirArchivo(e);
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
    }
    

    
    //ACCIONES DE BOTONES
    
    private void actionConvertir(ActionEvent e){
        if( !model.isEmpty() ){
            
        }else{
            JOptionPane.showMessageDialog
                    (frame, "Debe al menos abrir un archivo para convertir.", 
                    App.NAME, JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
    private void actionAbrirArchivo(ActionEvent e){
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
                model.addElement(files[i]);
            }
        }
    }
    
    private void actionQuitarArchivo(ActionEvent e){
        int index = frame.listArchivos.getSelectedIndex();
        if( index != -1){
            model.remove( index );
            if( !model.isEmpty() ){
                frame.listArchivos.setSelectedIndex(0);
            }
        }else{
            JOptionPane.showMessageDialog
                    (frame, "Debe seleccionar items", 
                    App.NAME, JOptionPane.INFORMATION_MESSAGE);
        }
    }
}
