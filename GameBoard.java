import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import java.util.Collections;
import javax.swing.*;

public class GameBoard {
    private JFrame frame;
    private JLabel questionLabel, timerLabel;
    private JButton imageButton1, imageButton2, imageButton3, startButton;
    private JTextField nameField;
    private Thread timerThread;
    private int currentQuestionIndex = 0;
    private int timeLeft = 100; // Total waktu untuk seluruh permainan (100 detik)
    private int score = 0;
    private String playerName;

    private ArrayList<Match> questionList = new ArrayList<>(); // Menggunakan kelas Question langsung

    public GameBoard() {
        frame = new JFrame("Game QuizMatch");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);

        JPanel startPanel = new JPanel(new GridBagLayout());
        startPanel.setBackground(new Color(200, 240, 255));
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(20, 20, 20, 20);

        JLabel nameLabel = new JLabel("Masukkan Nama:");
        nameLabel.setFont(new Font("Arial", Font.BOLD, 20));
        gbc.gridx = 0;
        gbc.gridy = 0;
        startPanel.add(nameLabel, gbc);

        nameField = new JTextField(25);
        nameField.setFont(new Font("Arial", Font.PLAIN, 16));
        gbc.gridy = 1;
        startPanel.add(nameField, gbc);

        startButton = new JButton("Mulai");
        startButton.setFont(new Font("Arial", Font.BOLD, 20));
        startButton.addActionListener(e -> startGame());
        gbc.gridy = 2;
        startPanel.add(startButton, gbc);

        frame.add(startPanel);
        frame.setVisible(true);
    }

    class BackgroundPanel extends JPanel {
        private Image backgroundImage;

        public BackgroundPanel(String imagePath) {
            backgroundImage = new ImageIcon(imagePath).getImage(); // Memuat gambar latar belakang
        }

        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            if (backgroundImage != null) {
                g.drawImage(backgroundImage, 0, 0, getWidth(), getHeight(), this); // Menggambar gambar latar belakang
            } else {
                System.out.println("Gambar tidak ada.");
            }
        }
    }

    private void startGame() {
        DatabaseHelper dbHelper = new DatabaseHelper();
        questionList = dbHelper.loadQuestions();

        if (questionList.isEmpty()) {
            JOptionPane.showMessageDialog(frame, "Tidak ada soal di database.");
            return;
        }

        // Acak soal
        Collections.shuffle(questionList);

        playerName = nameField.getText();

        if (playerName.isEmpty()) {
            JOptionPane.showMessageDialog(frame, "Silakan masukkan nama terlebih dahulu!");
            return;
        }

        frame.getContentPane().removeAll(); // Hapus komponen sebelumnya

        // Buat panel permainan baru dan tampilkan soal
        JPanel gamePanel = new BackgroundPanel("D:\\semester 5\\PBO\\ProjectKelompok39\\images\\br_game2.jpg");
        gamePanel.setLayout(new BorderLayout()); // Tetapkan tata letak panel
        displayQuestion(gamePanel); // Tampilkan soal pada gamePanel

        frame.add(gamePanel); // Tambahkan panel soal ke frame
        frame.revalidate(); // Revalidate frame agar perubahan diterapkan
        frame.repaint();

        startTimerThread(); // Mulai timer untuk seluruh permainan
    }

    private void displayQuestion(JPanel gamePanel) {
        Match currentQuestion = questionList.get(currentQuestionIndex);

        // Gunakan GridBagLayout pada gamePanel
        gamePanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 10, 10, 10);

        // Menampilkan soal
        questionLabel = new JLabel("<html>" + currentQuestion.getQuestions() + "</html>");
        questionLabel.setFont(new Font("Arial", Font.BOLD, 25));
        questionLabel.setForeground(new Color(174, 158, 108)); // Set text color to sand color
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.gridwidth = 3; // Membuat label mengambil 3 kolom
        gamePanel.add(questionLabel, gbc);

        // Menampilkan gambar pilihan
        JPanel optionPanel = new JPanel(new GridBagLayout());
        GridBagConstraints gbcOption = new GridBagConstraints();
        gbcOption.insets = new Insets(10, 10, 10, 10); // Menambahkan jarak antar tombol gambar
        int imageWidth = 180; // Lebar gambar yang lebih besar
        int imageHeight = 180; // Tinggi gambar yang lebih besar

        // Menambahkan border luar pada panel gambar
        optionPanel.setBackground(new Color(0, 0, 0, 0)); // Set background to transparent
        optionPanel.setBorder(BorderFactory.createEmptyBorder(10, 20, 150, 20)); // Tambahkan ruang di sekitar panel

        // Tombol gambar pertama
        imageButton1 = new JButton(
                new ImageIcon(resizeImage(currentQuestion.getImagePath1(), imageWidth, imageHeight)));
        imageButton1.setPreferredSize(new Dimension(imageWidth, imageHeight));
        imageButton1.addActionListener(
                createOptionListener(currentQuestion.getCorrectAnswer(), currentQuestion.getImagePath1()));
        imageButton1.setMargin(new Insets(10, 10, 10, 10)); // Menambahkan margin 10 piksel di setiap sisi tombol
        gbcOption.gridx = 0;
        gbcOption.gridy = 0;
        optionPanel.add(imageButton1, gbcOption);

        // Tombol gambar kedua
        imageButton2 = new JButton(
                new ImageIcon(resizeImage(currentQuestion.getImagePath2(), imageWidth, imageHeight)));
        imageButton2.setPreferredSize(new Dimension(imageWidth, imageHeight));
        imageButton2.addActionListener(
                createOptionListener(currentQuestion.getCorrectAnswer(), currentQuestion.getImagePath2()));
        imageButton2.setMargin(new Insets(10, 10, 10, 10)); // Menambahkan margin 10 piksel di setiap sisi tombol
        gbcOption.gridx = 1;
        gbcOption.gridy = 0;
        optionPanel.add(imageButton2, gbcOption);

        // Tombol gambar ketiga
        imageButton3 = new JButton(
                new ImageIcon(resizeImage(currentQuestion.getImagePath3(), imageWidth, imageHeight)));
        imageButton3.setPreferredSize(new Dimension(imageWidth, imageHeight));
        imageButton3.addActionListener(
                createOptionListener(currentQuestion.getCorrectAnswer(), currentQuestion.getImagePath3()));
        imageButton3.setMargin(new Insets(10, 10, 10, 10)); // Menambahkan margin 10 piksel di setiap sisi tombol
        gbcOption.gridx = 2;
        gbcOption.gridy = 0;
        optionPanel.add(imageButton3, gbcOption);

        // Menambahkan panel pilihan ke dalam gamePanel
        gbc.gridx = 0;
        gbc.gridy = 2;
        gbc.gridwidth = 3; // Membuat pilihan gambar mengambil 3 kolom
        gamePanel.add(optionPanel, gbc);

        // Menampilkan timer
        timerLabel = new JLabel("Waktu: " + timeLeft + " detik", SwingConstants.CENTER);
        timerLabel.setFont(new Font("Arial", Font.BOLD, 16));
        timerLabel.setForeground(Color.WHITE);
        gbc.gridx = 0;
        gbc.gridy = 5;
        gbc.gridwidth = 3;
        gamePanel.add(timerLabel, gbc);
    }

    // Fungsi untuk menyesuaikan ukuran gambar
    private Image resizeImage(String imagePath, int width, int height) {
        ImageIcon icon = new ImageIcon(imagePath); // Membaca gambar
        Image img = icon.getImage(); // Mengambil objek gambar dari icon
        return img.getScaledInstance(width, height, Image.SCALE_SMOOTH); // Mengubah ukuran gambar
    }

    private ActionListener createOptionListener(String correctAnswer, String selectedImagePath) {
        return e -> {
            if (selectedImagePath.equals(correctAnswer)) {
                score += 10; // Tambah skor jika gambar yang dipilih sesuai dengan jawaban yang benar
                nextQuestion(); // Lanjutkan ke soal berikutnya
            } else {
                stopTimerThread();
                JOptionPane.showMessageDialog(frame, "Jawaban salah.\nGame selesai! Skor Anda: " + score);
                endGame(); // Akhiri permainan jika jawaban salah
            }
        };
    }

    private void nextQuestion() {
        if (currentQuestionIndex < questionList.size() - 1) {
            currentQuestionIndex++; // Pindah ke soal berikutnya
            frame.getContentPane().removeAll(); // Hapus soal sebelumnya

            // Buat panel game baru dan tampilkan soal berikutnya
            JPanel gamePanel = new BackgroundPanel("D:\\semester 5\\PBO\\ProjectKelompok39\\images\\br_game2.jpg");
            gamePanel.setLayout(new BorderLayout()); // Tetapkan tata letak panel
            displayQuestion(gamePanel); // Tampilkan soal pada gamePanel

            frame.add(gamePanel); // Tambahkan panel soal ke frame
            frame.revalidate(); // Revalidate frame agar perubahan diterapkan
            frame.repaint(); // Repaint frame agar tampilan diperbarui
        } else {
            JOptionPane.showMessageDialog(frame, "Game selesai! Skor Anda: " + score);
            endGame(); // Akhiri permainan jika soal habis
        }
    }

    private void startTimerThread() {
        timerThread = new Thread(() -> {
            try {
                while (timeLeft > 0) {
                    Thread.sleep(1000);
                    timeLeft--;
                    SwingUtilities.invokeLater(() -> timerLabel.setText("Waktu: " + timeLeft + " detik"));
                }
                SwingUtilities.invokeLater(() -> {
                    JOptionPane.showMessageDialog(frame, "Waktu habis! Kuis selesai. Skor Anda: " + score);
                    endGame();
                });
            } catch (InterruptedException e) {
                // Timer thread dihentikan secara manual
            }
        });
        timerThread.start();
    }

    private void stopTimerThread() {
        if (timerThread != null && timerThread.isAlive()) {
            timerThread.interrupt();
        }
    }

    private void endGame() {
        stopTimerThread();
        DatabaseHelper dbHelper = new DatabaseHelper();
        dbHelper.saveScore(playerName, score); // Simpan nama pemain dan skor

        new Menu(); // Kembali ke menu
        frame.dispose(); // Tutup frame
    }
}