
/*
 * MainFrame.java
 *
 * Created on 17/01/2012, 09:01:35 PM
 */
package interfaz;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.instrument.IllegalClassFormatException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import logica.Usuario;

/**
 *
 * @author edward
 */
public class MainFrame extends javax.swing.JFrame {
    private Usuario user;
    
    public MainFrame() {
        initComponents();
        initOtherComponents();
    }
    
    private void initOtherComponents(){
        user = new Usuario();
        
        try {    
            user.load();
        } catch (FileNotFoundException ex) {
            //Logger.getLogger(MainFrame.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            //Logger.getLogger(MainFrame.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalClassFormatException ex) {
            //Logger.getLogger(MainFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void exportar(){
        if( user.isCompletado() ){
            JFileChooser fchooser = new JFileChooser();
            fchooser.setDialogType( JFileChooser.SAVE_DIALOG );
            fchooser.setDialogTitle("Exportar Test");
            
            FileNameExtensionFilter filter = new 
                    FileNameExtensionFilter("jti files", "jti");
            
            fchooser.setFileFilter(filter);
            
            int opt = fchooser.showDialog(this, "Guardar");
            if( opt == JFileChooser.APPROVE_OPTION){
                File file = fchooser.getSelectedFile();
                try {
                    user.save(file);
                } catch (IOException ex) {
                    JOptionPane.showMessageDialog
                        (this, "Imposible guardar.\nDetalles:\n" +
                            ex.getMessage(), 
                        App.NAME, JOptionPane.ERROR_MESSAGE);
                }
            }
        }else{
            JOptionPane.showMessageDialog
                    (this, "Debe terminar de responder el test", 
                    App.NAME, JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
    /**
     * Abre un nuevo TEST, borrando el anterior
     */
    
    private void abrirNuevoTest(){
        user = new Usuario();
        try {
            user.save();
        } catch (IOException ex) {
            //Logger.getLogger(MainFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
        TestDialog dialog = new TestDialog(this, true, user);
        dialog.setVisible(true);
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        pnlBack = new javax.swing.JPanel();
        btnNuevo = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        btnContinuar = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        btnExportar = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        lblTitulo = new javax.swing.JLabel();
        lblDescripcion = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle(App.NAME);

        pnlBack.setBackground(new java.awt.Color(230, 249, 232));
        pnlBack.setLayout(new java.awt.GridBagLayout());

        btnNuevo.setText("Nuevo test");
        btnNuevo.setPreferredSize(new java.awt.Dimension(150, 32));
        btnNuevo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        pnlBack.add(btnNuevo, gridBagConstraints);

        jLabel1.setLabelFor(btnContinuar);
        jLabel1.setText("<html>\nEmpieza un nuevo test de inteligencia <br>emocional desde el inicio.\n</html>");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 10, 0);
        pnlBack.add(jLabel1, gridBagConstraints);

        btnContinuar.setText("Continuar Test");
        btnContinuar.setPreferredSize(new java.awt.Dimension(150, 32));
        btnContinuar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnContinuarActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        pnlBack.add(btnContinuar, gridBagConstraints);

        jLabel2.setText("<html>\nSi ya ah empezado un test, puede continuarlo, <br>este programa guarda sus cambios automáticamente.\n</html>");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 10, 0);
        pnlBack.add(jLabel2, gridBagConstraints);

        btnExportar.setText("Exportar Test");
        btnExportar.setPreferredSize(new java.awt.Dimension(150, 32));
        btnExportar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnExportarActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 4;
        pnlBack.add(btnExportar, gridBagConstraints);

        jLabel3.setText("<html>Exporta en un fichero el test ya terminado, <br>necesario para su procesamiento por parte del tutor.</html>");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 10, 0);
        pnlBack.add(jLabel3, gridBagConstraints);

        lblTitulo.setFont(new java.awt.Font("Ubuntu", 1, 24));
        lblTitulo.setText("Test de Inteligencia Emocional");
        lblTitulo.setToolTipText("");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        pnlBack.add(lblTitulo, gridBagConstraints);

        lblDescripcion.setFont(new java.awt.Font("Ubuntu", 0, 14));
        lblDescripcion.setText("Test de inteligencia emocional basado en el trabajo de del psicólogo Iskia Xasswer");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.insets = new java.awt.Insets(20, 0, 20, 0);
        pnlBack.add(lblDescripcion, gridBagConstraints);

        jButton1.setText("Acerca de mí");
        jButton1.setPreferredSize(new java.awt.Dimension(150, 32));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        pnlBack.add(jButton1, gridBagConstraints);

        jLabel4.setText("Información sobre el autor del programa y versión.");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_START;
        gridBagConstraints.insets = new java.awt.Insets(10, 20, 10, 0);
        pnlBack.add(jLabel4, gridBagConstraints);

        getContentPane().add(pnlBack, java.awt.BorderLayout.CENTER);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-697)/2, (screenSize.height-467)/2, 697, 467);
    }// </editor-fold>//GEN-END:initComponents

    private void btnNuevoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoActionPerformed
        if( user.isEmpty() ){
            abrirNuevoTest();
        }else {
            int opt = JOptionPane.showConfirmDialog
                    (this, "Ya existe un test guardado.\n¿Desear realizar "
                    + "un nuevo test, borrando el anterior?", 
                    App.NAME, JOptionPane.YES_NO_CANCEL_OPTION);
            if( opt == JOptionPane.OK_OPTION){
                abrirNuevoTest();
            }
        }
        
    }//GEN-LAST:event_btnNuevoActionPerformed

    private void btnContinuarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnContinuarActionPerformed
        if( user.isCompletado() ){
            JOptionPane.showMessageDialog
                    (this, "Ya se ha terminado el test. Puede \n" +
                           "empezar otro si desea, con la opción\n'Nuevo Test'", 
                    App.NAME, JOptionPane.INFORMATION_MESSAGE);
        }else if( user.isEmpty()){
            JOptionPane.showMessageDialog
                    (this, "No es posible continuar, todavía no \n"
                    + "se ha empezado ningún test.", 
                    App.NAME, JOptionPane.INFORMATION_MESSAGE);
        }else{
            TestDialog dialog = new TestDialog(this, true, user);
            dialog.setVisible(true);    
        }
        
    }//GEN-LAST:event_btnContinuarActionPerformed

    private void btnExportarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnExportarActionPerformed
        exportar();
    }//GEN-LAST:event_btnExportarActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        AboutMeDialog frm = new AboutMeDialog(this, true);
        frm.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnContinuar;
    private javax.swing.JButton btnExportar;
    private javax.swing.JButton btnNuevo;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel lblDescripcion;
    private javax.swing.JLabel lblTitulo;
    private javax.swing.JPanel pnlBack;
    // End of variables declaration//GEN-END:variables
}
