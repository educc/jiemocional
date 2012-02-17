package interfaz;


import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import javax.swing.ButtonGroup;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextArea;
import logica.Item;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author edward
 */
public class ItemPanel extends JPanel {
    private Item item;
    private JTextArea textArea;
    private JRadioButton[] btnRadios;
    private String[] strNames;
    private ButtonGroup groupbuton;
    private JPanel panel;
    
    private int indSeleccted; //indicador seleccionado
    
    private static final int TOTAL_RBUTTONS = 4;

    public ItemPanel(Item item, String[] strnames) {
        super();
        //this.setBackground(Color.WHITE);
        this.item = item;
        strNames = strnames;
        indSeleccted = -1;
        initComponents();
    }
    
    private void initComponents(){
        BorderLayout layout = new BorderLayout();
        this.setLayout(layout);
        
        //====================================================
        panel = new JPanel();
            FlowLayout flowlayout = new FlowLayout(FlowLayout.LEFT);
            panel.setLayout(flowlayout);
            groupbuton = new ButtonGroup();
                    
            btnRadios = new JRadioButton[TOTAL_RBUTTONS];
            for(int i = 0; i < TOTAL_RBUTTONS; i++){
                btnRadios[i] = new JRadioButton( strNames[i] );
                btnRadios[i].setOpaque(false);
                if( App.DEBUG ){
                    btnRadios[i].setSelected(true);
                }
                groupbuton.add(btnRadios[i]);
                panel.add(btnRadios[i]);
            }
            
        
        //====================================================
        
        textArea = new JTextArea( item.getNombre() );
        textArea.setLineWrap(true);
        textArea.setWrapStyleWord(true);
        textArea.setEditable(false);
        textArea.setOpaque(false);
        
        this.add(textArea, BorderLayout.CENTER);
        this.add(panel, BorderLayout.EAST);
    }
    
    /**
     * Fija el color a todo el panel
     * @param color 
     */
    
    public void setColor(Color color){
        /*int limit = TOTAL_RBUTTONS;
        for(int i = 0; i < limit; i++){
            btnRadios[i].setOpaque(true);
            btnRadios[i].setBackground(color);
        }
        textArea.setOpaque(true);
        textArea.setBackground(color);*/
        panel.setOpaque(true);
        panel.setBackground(color);
    }
    
    /**
     * TRUE si algunos de los RadioButtons estan seleccionados
     * @return 
     */
    
    public boolean isSelected(){
        boolean selected = false;
        for(int i = 0; i < btnRadios.length; i++){
            if( btnRadios[i].isSelected() ){
                selected = true;
                indSeleccted = i;
            }
        }     
        return selected;
    }
    
    /**
     * 0-3 segun el indicador seleccionado
     * @return -1 si ninguno esta seleccionado
     */
    
    public int indicadorSelected(){
        isSelected();
        return indSeleccted;
    }
    
}
