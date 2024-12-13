import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Menu extends JFrame implements ActionListener {
    private boolean musicPlayed = false; // Flag untuk memastikan musik hanya dimainkan sekali
    JButton startButton, scoreButton, exitButton;
    GameMusic gameMusic = new GameMusic(); // Instance untuk memainkan musik

    public Menu() {
        this.setLayout(new BorderLayout());

        // Panel latar belakang dengan gambar
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

        // Panel untuk tombol-tombol menu
        JPanel buttonPanel = new JPanel(new GridLayout(3, 1, 10, 10));
        buttonPanel.setOpaque(false);

        // Membuat tombol-tombol dengan gaya kustom
        startButton = createCustomButton("Start");
        scoreButton = createCustomButton("Score");
        exitButton = createCustomButton("Exit");

        // Menambahkan action listener untuk menangani klik tombol
        startButton.addActionListener(this);
        scoreButton.addActionListener(this);
        exitButton.addActionListener(this);

        // Menambahkan efek hover pada tombol
        addHoverEffect(startButton);
        addHoverEffect(scoreButton);
        addHoverEffect(exitButton);

        buttonPanel.add(startButton);
        buttonPanel.add(scoreButton);
        buttonPanel.add(exitButton);

        // Menambahkan tombol ke tengah latar belakang menggunakan GridBagLayout
        backgroundPanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        backgroundPanel.add(buttonPanel, gbc);

        this.add(backgroundPanel, BorderLayout.CENTER);

        // Konfigurasi jendela utama
        this.setTitle("Game Menu");
        this.setSize(800, 600);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLocationRelativeTo(null);

        // Memutar musik menu saat aplikasi dimulai
        if (!musicPlayed) {
            gameMusic.playMusicMenu();
            musicPlayed = true;
        }

        this.setVisible(true);
    }

    // Membuat tombol dengan gaya khusus
    private JButton createCustomButton(String text) {
        JButton button = new JButton(text);
        button.setFont(new Font("Arial", Font.BOLD, 24)); // Mengatur font tombol
        button.setForeground(new Color(139, 69, 19)); // Warna teks tombol
        button.setOpaque(false); // Latar belakang transparan
        button.setContentAreaFilled(false);
        button.setBorderPainted(false);
        button.setFocusPainted(false);
        button.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR)); // Mengatur kursor saat hover
        return button;
    }

    // Menambahkan efek hover pada tombol
    private void addHoverEffect(JButton button) {
        button.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseEntered(MouseEvent e) {
                button.setForeground(new Color(210, 180, 150)); // Ubah warna saat mouse hover
            }

            @Override
            public void mouseExited(MouseEvent e) {
                button.setForeground(new Color(139, 69, 19)); // Kembalikan warna asli
            }
        });
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        // Hentikan musik latar sebelum memainkan efek klik
        gameMusic.stopSound();
        gameMusic.playMusicClick();

        // Menunda tindakan setelah klik selama 500ms
        new Timer(500, evt -> {
            ((Timer) evt.getSource()).stop();
            if (e.getSource() == startButton) {
                // Memulai permainan
                this.dispose();
                SwingUtilities.invokeLater(GameBoard::new);
                gameMusic.stopSound(); // Hentikan musik saat transisi
            } else if (e.getSource() == scoreButton) {
                // Menampilkan skor
                this.dispose(); // Tutup jendela menu
                SwingUtilities.invokeLater(() -> new ScoreBoard());
                gameMusic.stopSound(); // Hentikan musik saat transisi
            } else if (e.getSource() == exitButton) {
                // Keluar dari aplikasi
                gameMusic.stopSound(); // Hentikan musik saat keluar
                System.exit(0);
            }
        }).start();
    }
}
