import java.awt.*;
import java.awt.event.ActionListener;
import javax.swing.*;

public class ShapeQuiz {
    private JFrame frame;
    private JLabel questionLabel, timerLabel, scoreLabel;
    private JButton squareButton, triangleButton, startButton;
    private JTextField nameField;
    private Timer timer;
    private int currentQuestionIndex = 0;
    private int timeLeft = 10; // Waktu per soal (dalam detik)
    private int score = 0; // Skor pemain
    private String playerName;
    private ScoreManager scoreManager;

    // Data soal dan jawaban
    private String[] questions = {
            "Aku terbentuk dari 3 sisi dan mempunyai 3 sudut lancip. <br>Namaku adalah segitiga.",
            "Aku memiliki 4 sisi sama panjang. <br>Namaku adalah persegi."
    };
    private String[] correctAnswers = { "triangle", "square" }; // Jawaban benar

    public ShapeQuiz() {
        // Membuat frame utama
        frame = new JFrame("Shape Quiz");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 400);

        // Panel untuk tampilan awal
        JPanel startPanel = new BackgroundPanel("background_start.jpg");
        startPanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 10, 10, 10);

        // Label untuk input nama
        JLabel nameLabel = new JLabel("Masukkan Nama:");
        nameLabel.setFont(new Font("Arial", Font.BOLD, 16));
        nameLabel.setForeground(Color.BLACK);
        gbc.gridx = 0;
        gbc.gridy = 0;
        startPanel.add(nameLabel, gbc);

        // TextField untuk nama pemain
        nameField = new JTextField(20);
        gbc.gridx = 0;
        gbc.gridy = 1;
        startPanel.add(nameField, gbc);

        // Tombol Mulai
        startButton = new JButton("Mulai");
        startButton.setFont(new Font("Arial", Font.BOLD, 16));
        startButton.addActionListener(e -> startGame());
        gbc.gridx = 0;
        gbc.gridy = 2;
        startPanel.add(startButton, gbc);

        // Menambahkan panel ke frame
        frame.add(startPanel);
        frame.setVisible(true);
    }

    // Fungsi untuk memulai game
    private void startGame() {
        playerName = nameField.getText(); // Ambil nama pemain dari input

        if (playerName.isEmpty()) {
            JOptionPane.showMessageDialog(frame, "Silakan masukkan nama terlebih dahulu!");
            return; // Jika nama kosong, tampilkan pesan
        }

        // Menghilangkan tampilan awal dan memulai kuis
        frame.getContentPane().removeAll();
        frame.repaint();

        // Panel untuk kuis dengan latar belakang
        JPanel gamePanel = new BackgroundPanel("D:\\semester 5\\PBO\\Latian Code\\bacground.jpg");
        gamePanel.setLayout(new BorderLayout());

        // Panel untuk soal
        JPanel questionPanel = new JPanel();
        questionPanel.setOpaque(false); // Supaya latar belakang terlihat
        questionPanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 10, 10, 10);

        // Menambahkan teks soal
        questionLabel = new JLabel("<html>" + questions[currentQuestionIndex] + "</html>");
        questionLabel.setFont(new Font("Arial", Font.BOLD, 18));
        questionLabel.setForeground(Color.BLACK);
        questionPanel.add(questionLabel, gbc);

        // Menambahkan label timer
        timerLabel = new JLabel("Waktu: " + timeLeft + " detik");
        timerLabel.setFont(new Font("Arial", Font.BOLD, 16));
        timerLabel.setForeground(Color.RED);
        gbc.gridy = 1;
        questionPanel.add(timerLabel, gbc);

        // Menambahkan label skor
        scoreLabel = new JLabel("Skor: " + score);
        scoreLabel.setFont(new Font("Arial", Font.BOLD, 16));
        scoreLabel.setForeground(Color.GREEN);
        gbc.gridy = 2;
        questionPanel.add(scoreLabel, gbc);

        // Panel untuk opsi
        JPanel optionPanel = new JPanel(new GridBagLayout());
        optionPanel.setOpaque(false); // Supaya latar belakang terlihat
        GridBagConstraints gbcOption = new GridBagConstraints();
        gbcOption.insets = new Insets(10, 20, 10, 20);

        // Tombol untuk opsi 1 (persegi)
        squareButton = new JButton();
        squareButton.setIcon(resizeIcon("D:\\semester 5\\PBO\\Latian Code\\kotak.jpg", 150, 150));
        squareButton.setPreferredSize(new Dimension(150, 150));
        squareButton.addActionListener(createOptionListener("square"));
        gbcOption.gridx = 0;
        gbcOption.gridy = 0;
        optionPanel.add(squareButton, gbcOption);

        // Tombol untuk opsi 2 (segitiga)
        triangleButton = new JButton();
        triangleButton.setIcon(resizeIcon("D:\\semester 5\\PBO\\Latian Code\\segitiga.jpg", 150, 150));
        triangleButton.setPreferredSize(new Dimension(150, 150));
        triangleButton.addActionListener(createOptionListener("triangle"));
        gbcOption.gridx = 1;
        gbcOption.gridy = 0;
        optionPanel.add(triangleButton, gbcOption);

        // Menambahkan panel ke game panel
        gamePanel.add(questionPanel, BorderLayout.NORTH);
        gamePanel.add(optionPanel, BorderLayout.CENTER);

        // Menambahkan game panel ke frame
        frame.add(gamePanel);

        // Mulai timer
        startTimer();
        frame.revalidate();
    }

    // Membuat action listener untuk opsi
    private ActionListener createOptionListener(String chosenOption) {
        return e -> {
            timer.stop(); // Hentikan timer

            // Dapatkan jawaban benar untuk soal saat ini
            String correctAnswer = correctAnswers[currentQuestionIndex];

            // Periksa apakah jawaban yang dipilih benar
            if (chosenOption.equals(correctAnswer)) {
                score += 10; // Tambahkan skor jika jawaban benar
                JOptionPane.showMessageDialog(frame,
                        "Jawaban benar! Jawaban yang benar adalah: " + correctAnswer.toUpperCase());
            } else {
                JOptionPane.showMessageDialog(frame,
                        "Jawaban salah. Jawaban yang benar adalah: " + correctAnswer.toUpperCase());
            }

            // Pindah ke soal berikutnya
            nextQuestion();
        };
    }

    // Fungsi untuk pindah ke soal berikutnya
    private void nextQuestion() {
        if (currentQuestionIndex < questions.length - 1) {
            currentQuestionIndex++;
            questionLabel.setText("<html>" + questions[currentQuestionIndex] + "</html>");
            scoreLabel.setText("Skor: " + score);
            startTimer();
        } else {
            JOptionPane.showMessageDialog(frame, "Kuis selesai! Skor Anda: " + score);
            scoreManager.saveScore(playerName + ": " + score); // Simpan skor pemain
            frame.dispose();
        }
    }

    // Timer untuk soal
    private void startTimer() {
        timeLeft = 10;
        timerLabel.setText("Waktu: " + timeLeft + " detik");

        timer = new Timer(1000, e -> {
            timeLeft--;
            timerLabel.setText("Waktu: " + timeLeft + " detik");

            if (timeLeft <= 0) {
                timer.stop();
                JOptionPane.showMessageDialog(frame, "Waktu habis! Jawaban salah.");
                nextQuestion();
            }
        });
        timer.start();
    }

    // Fungsi untuk mengubah ukuran gambar
    private ImageIcon resizeIcon(String path, int width, int height) {
        ImageIcon originalIcon = new ImageIcon(path);
        Image originalImage = originalIcon.getImage();
        Image scaledImage = originalImage.getScaledInstance(width, height, Image.SCALE_SMOOTH);
        return new ImageIcon(scaledImage);
    }

    // Kelas untuk panel dengan latar belakang
    private class BackgroundPanel extends JPanel {
        private Image backgroundImage;

        public BackgroundPanel(String imagePath) {
            try {
                backgroundImage = new ImageIcon(imagePath).getImage();
            } catch (Exception e) {
                System.err.println("Gagal memuat gambar latar: " + e.getMessage());
            }
        }

        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            if (backgroundImage != null) {
                g.drawImage(backgroundImage, 0, 0, getWidth(), getHeight(), this);
            }
        }
    }

    public ShapeQuiz(ScoreManager scoreManager) {
        this.scoreManager = scoreManager;
        // Logika kuis seperti sebelumnya
    }

    public static void main(String[] args) {
        new ShapeQuiz();
    }
}
