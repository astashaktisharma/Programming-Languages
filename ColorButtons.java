//updated updown.java
 import java.awt.Font;
 import java.awt.Color;
 import javax.swing.*;
 import java.awt.event.*;
 
 public class ColorButtons extends JFrame implements ActionListener
 {
    JTextArea textArea = new JTextArea(8,15);
    JButton red, white, blue, green, yellow;
 
   public ColorButtons()
   {
     textArea.setFont(new Font("monospaced", Font.BOLD, 20));
     textArea.setBackground(Color.white);
     textArea.setText("");
 
     JPanel panel = new JPanel();
     panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
     panel.add(textArea);
 
     JPanel buttonPanel = new JPanel();
     buttonPanel.setLayout(new BoxLayout(buttonPanel, BoxLayout.X_AXIS));
     buttonPanel.add(red = new JButton("red"));
     buttonPanel.add(white = new JButton("white"));
     buttonPanel.add(blue = new JButton("blue"));
     buttonPanel.add(green = new JButton("green"));
     buttonPanel.add(yellow = new JButton("yellow"));
     panel.add(buttonPanel);
 
     red.addActionListener(this);
     white.addActionListener(this);
     blue.addActionListener(this);
     green.addActionListener(this);
     yellow.addActionListener(this);
 
     this.setContentPane(panel);
     this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
     this.pack();
   }
 
   public void actionPerformed(ActionEvent event)
   {
     if (event.getSource() == red)
     {
        textArea.setBackground(Color.red);
     }
     if (event.getSource() == blue)
     {
        textArea.setBackground(Color.decode("#00DFFF"));
     }
     if (event.getSource() == white)
     {
        textArea.setBackground(Color.white);
     }
     if (event.getSource() == green)
     {
        textArea.setBackground(Color.green);
     }
     if (event.getSource() == yellow)
     {
        textArea.setBackground(Color.yellow);
     }
   }
 
   public static void main(String[] args)
   {
     JFrame window = new ColorButtons();
     window.setVisible(true);
   }
 }
 