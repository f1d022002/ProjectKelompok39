import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class Menu extends JFrame implements ActionListener {

    JButton startButton, scoreButton, exitButton;

    public Menu() {
        this.setLayout(new BorderLayout());

        JPanel backgroundPanel = new JPanel() {
            private Image backgroundImage = new ImageIcon("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\images\\findmatch.jpg").getImage();

            @Override
            protected void paintComponent(Graphics g) {
                super.paintComponent(g);
                if (backgroundImage != null) {
                    g.drawImage(backgroundImage, 0, 0, getWidth(), getHeight(), this);
                }
            }
        };

        JPanel buttonPanel = new JPanel(new GridLayout(3, 1, 10, 10));
        buttonPanel.setOpaque(false);

        startButton = createCustomButton("Start");
        scoreButton = createCustomButton("Score");
        exitButton = createCustomButton("Exit");

        startButton.addActionListener(this);
        scoreButton.addActionListener(this);
        exitButton.addActionListener(this);

        addHoverEffect(startButton);
        addHoverEffect(scoreButton);
        addHoverEffect(exitButton);

        buttonPanel.add(startButton);
        buttonPanel.add(scoreButton);
        buttonPanel.add(exitButton);

        backgroundPanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        backgroundPanel.add(buttonPanel, gbc);

        this.add(backgroundPanel, BorderLayout.CENTER);

        this.setTitle("FindMatch Menu");
        this.setSize(800, 600);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLocationRelativeTo(null);
        this.setVisible(true);
    }

    private JButton createCustomButton(String text) {
        JButton button = new JButton(text);
        button.setFont(new Font("Arial", Font.BOLD, 24));
        button.setForeground(new Color(139, 69, 19));
        button.setOpaque(false);
        button.setContentAreaFilled(false);
        button.setBorderPainted(false);
        button.setFocusPainted(false);
        button.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        return button;
    }

    private void addHoverEffect(JButton button) {
        button.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseEntered(MouseEvent e) {
                button.setForeground(new Color(210, 180, 150));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                button.setForeground(new Color(139, 69, 19));
            }
        });
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == startButton) {
            // Start the game
            this.dispose();
            SwingUtilities.invokeLater(ShapeQuiz::new);
        } else if (e.getSource() == scoreButton) {
            // Display scores
            JOptionPane.showMessageDialog(this, "No scores to display yet!", "Scores", JOptionPane.INFORMATION_MESSAGE);
        } else if (e.getSource() == exitButton) {
            // Exit the application
            System.exit(0);
        }
    }
}
