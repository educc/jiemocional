/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * MainFrame.java
 *
 * Created on 18/02/2012, 04:17:03 PM
 */
package vista;

import controlador.MainFrameControlador;
import javax.swing.UIManager;

/**
 *
 * @author edward
 */
public class MainFrame extends javax.swing.JFrame {

    /** Creates new form MainFrame */
    public MainFrame() {
        initComponents();
        MainFrameControlador control = new MainFrameControlador(this);
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        btnAgregar = new javax.swing.JButton();
        btnQuitar = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        listArchivos = new javax.swing.JList();
        btnConvertir = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle(App.NAME + ": " + App.VERSION);

        jPanel1.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT, 0, 0));

        btnAgregar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vista/recursos/add.png"))); // NOI18N
        btnAgregar.setText("<html><b>Agregar</b></html>");
        btnAgregar.setPreferredSize(new java.awt.Dimension(125, 60));
        jPanel1.add(btnAgregar);

        btnQuitar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vista/recursos/remove.png"))); // NOI18N
        btnQuitar.setText("<html><b>Quitar</b></html>");
        btnQuitar.setPreferredSize(new java.awt.Dimension(125, 60));
        jPanel1.add(btnQuitar);

        jLabel1.setText("<html><blockquote>Exporta a hojas de cálculo detallado<br>el archivo generado por JIEmocional</blockquote></html>");
        jPanel1.add(jLabel1);

        getContentPane().add(jPanel1, java.awt.BorderLayout.NORTH);

        listArchivos.setSelectionMode(javax.swing.ListSelectionModel.SINGLE_SELECTION);
        listArchivos.setVisibleRowCount(0);
        jScrollPane1.setViewportView(listArchivos);

        getContentPane().add(jScrollPane1, java.awt.BorderLayout.CENTER);

        btnConvertir.setFont(new java.awt.Font("Ubuntu", 1, 18)); // NOI18N
        btnConvertir.setText("Convertir");
        getContentPane().add(btnConvertir, java.awt.BorderLayout.PAGE_END);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-597)/2, (screenSize.height-518)/2, 597, 518);
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        try {
            UIManager.setLookAndFeel( UIManager.getSystemLookAndFeelClassName());
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new MainFrame().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btnAgregar;
    public javax.swing.JButton btnConvertir;
    public javax.swing.JButton btnQuitar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    public javax.swing.JList listArchivos;
    // End of variables declaration//GEN-END:variables
}