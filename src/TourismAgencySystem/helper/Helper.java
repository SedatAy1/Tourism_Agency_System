package TourismAgencySystem.helper;
import javax.swing.*;
import java.awt.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;

import javax.swing.*;
import java.awt.*;
// Utility class with static methods for common GUI tasks,
// including UI setup, message dialogs, and manipulation of text fields, checkboxes, radio buttons, and date-related operations.
public class Helper {

    public static int screenCenterPoint(String axis, Dimension size){
        return switch (axis) {
            case "x" -> (Toolkit.getDefaultToolkit().getScreenSize().width - size.width) / 2;
            case "y" -> (Toolkit.getDefaultToolkit().getScreenSize().height - size.height) / 2;
            default -> 0;
        };
    }
    public static void showMessage(String str) {
        optionPage();
        String msg;
        String title;
        switch (str) {
            case "fill":
                msg = "Please fill all areas! ";
                title = "Error!";
                break;
            case "done":
                msg = "The operation is successful";
                title = "Notification";
                break;
            case "error":
                msg = "An error has occurred";
                title = "Error";
                break;
            default:
                msg = str;
                title = "Massage";
        }
        JOptionPane.showMessageDialog(null, msg, title, JOptionPane.INFORMATION_MESSAGE);
    }

    public static void optionPage() {
        UIManager.put("OptionPane.okButtonText", "Okay");
        UIManager.put("OptionPane.yesButtonText", "YES");
        UIManager.put("OptionPane.noButtonText", "NO");
    }

    // Form 19
    // Kullanıcıya başarılı işlemler için uygun pop up mesajları veriliyor mu?
   public static boolean (String str) {
        String msg;
        switch (str) {
            case "sure":
                msg = "Are you sure ?";
                break;
            default:
                msg = str;
        }

    }

    public static void resetFormFields(JTextField... fields) {
        for (JTextField field : fields) {
            field.setText(null);
        }
    }

    public static void resetCheckBoxes(JCheckBox... checkboxes) {
        for (JCheckBox checkbox : checkboxes) {
            checkbox.setSelected(false);
        }
    }

    public static void resetTextFields(JTextField... dateFields) {
        for (JTextField field : dateFields) {
            field.setText(null);
            field.setEnabled(false);
            field.setEditable(false);
        }
    }

    public static void resetRadioButtons(JRadioButton... radioButtons) {
        for (JRadioButton radioButton : radioButtons) {
            radioButton.setSelected(false);
        }
    }

    public static void enableTextFields(JTextField... dateFields) {
        for (JTextField field : dateFields) {
            field.setEnabled(true);
            field.setEditable(true);
        }
    }

    public static void enableComboBoxes(JComboBox... comboBoxes) {
        for (JComboBox box : comboBoxes) {
            box.setEnabled(true);
        }
    }

    public static void resetComboBoxes(JComboBox... comboBoxes) {
        for (JComboBox box : comboBoxes) {
            box.setEnabled(false);
            box.setSelectedIndex(0);
        }
    }

    public static java.sql.Date stringToDate(String dateString) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date utilDate = dateFormat.parse(dateString);
            return new java.sql.Date(utilDate.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int daysBetweenToDates(JTextField d1, JTextField d2) {
        LocalDate date1 = LocalDate.parse(d1.getText());
        LocalDate date2 = LocalDate.parse(d2.getText());
        int daysBetween = (int) ChronoUnit.DAYS.between(date1, date2);
        return daysBetween;
    }

    public static boolean isFieldEmpty(JTextField field){
        return field.getText().trim().isEmpty();
    }
    public static boolean isFieldEmpty(JEditorPane pane){
        return pane.getText().trim().isEmpty();
    }

    public static void showMsg(String str){
        optionPaneTR();
        String msg;
        String title;
        switch (str){
            case "fill":
                msg = "Lütfen tüm alanları doldurunuz.";
                title = "Hata!";
                break;
            case "done":
                msg = "İşlem Başarılı";
                title = "Sonuç";
                break;
            case "error":
                msg = "Bir hata oluştu.";
                title = "Hata!";
            default:
                msg = str;
                title = "Mesaj";

        }
        JOptionPane.showMessageDialog(null,msg,title,JOptionPane.INFORMATION_MESSAGE);
    }

    public static boolean confirm(String str){
        optionPaneTR();
        String msg;
        switch (str){
            case "sure":
                msg = "Bu işlemi gerçekleştirmek istediğinize emin misiniz?";
                break;
            default:
                msg=str;
        }
        return JOptionPane.showConfirmDialog(null,msg,"Son Kararın mı?", JOptionPane.YES_NO_OPTION) == 0;
    }
    public static void optionPaneTR(){
        UIManager.put("OptionPane.okButtonText","Tamam");
        UIManager.put("OptionPane.yesButtonText","Evet");
        UIManager.put("OptionPane.noButtonText","Hayır");

    }

}