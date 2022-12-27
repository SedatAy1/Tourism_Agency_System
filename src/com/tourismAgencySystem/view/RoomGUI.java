package com.tourismAgencySystem.view;
/*Oda ekleme sayfası*/
import com.tourismAgencySystem.helper.Config;
import com.tourismAgencySystem.helper.Helper;

import javax.swing.*;

public class RoomGUI extends JFrame{
    private JPanel wrapper;
    private JButton btn_close;
    private JTextField textField1;
    private JComboBox comboBox1;
    private JTextField textField2;
    private JComboBox comboBox2;
    private JTextField textField3;
    private JComboBox comboBox3;
    private JTextField textField4;
    private JComboBox comboBox4;
    private JTextField textField5;
    private JComboBox comboBox5;
    private JTextField textField6;
    private JTextField textField8;
    private JComboBox comboBox6;
    private JTextField textField7;
    private JComboBox comboBox7;
    private JComboBox comboBox8;
    private JButton btn_save;

    public RoomGUI(){
        add(wrapper);
        setSize(900,500);
        int x = Helper.screenCenterPoint("x",getSize());
        int y = Helper.screenCenterPoint("y",getSize());
        setLocation(x,y);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setTitle(Config.PROJECT_TITLE);
        setVisible(true);
        btn_close.setSize(20,20);
    }
}
