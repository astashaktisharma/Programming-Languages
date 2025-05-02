import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class ColorMixer_asta extends JFrame implements ActionListener {
    JTextArea colorArea;
    JTextField redField, greenField, blueField;

    public ColorMixer_asta() {
        // Set up large text area
        colorArea = new JTextArea(15, 30);
        colorArea.setEditable(false);
        colorArea.setBackground(new Color(255, 255, 255)); // white
        colorArea.setFont(new Font("monospaced", Font.PLAIN, 16));

        // Set up RGB input fields
        redField = new JTextField("255", 3);
        greenField = new JTextField("255", 3);
        blueField = new JTextField("255", 3);

        redField.addActionListener(this);
        greenField.addActionListener(this);
        blueField.addActionListener(this);

        // Labels and field panel
        JPanel fieldPanel = new JPanel();
        fieldPanel.add(new JLabel("RED:"));
        fieldPanel.add(redField);
        fieldPanel.add(new JLabel("GREEN:"));
        fieldPanel.add(greenField);
        fieldPanel.add(new JLabel("BLUE:"));
        fieldPanel.add(blueField);

        // Layout panel
        JPanel mainPanel = new JPanel();
        mainPanel.setLayout(new BorderLayout());
        mainPanel.add(colorArea, BorderLayout.CENTER);
        mainPanel.add(fieldPanel, BorderLayout.SOUTH);

        this.setContentPane(mainPanel);
        this.setTitle("Color Mixer");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.pack();
    }

    public void actionPerformed(ActionEvent e) {
        try {
            int r = Integer.parseInt(redField.getText());
            int g = Integer.parseInt(greenField.getText());
            int b = Integer.parseInt(blueField.getText());

            // Clamp values between 0 and 255
            r = Math.min(255, Math.max(0, r));
            g = Math.min(255, Math.max(0, g));
            b = Math.min(255, Math.max(0, b));

            Color customColor = new Color(r, g, b);
            colorArea.setBackground(customColor);

        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(this, "Please enter numbers between 0 and 255.");
        }
    }

    public static void main(String[] args) {
        JFrame window = new ColorMixer_asta();
        window.setVisible(true);
    }
}
