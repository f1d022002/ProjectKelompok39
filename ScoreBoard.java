
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class ScoreBoard extends JFrame {
    private JFrame frame;
    private JPanel scoresPanel;
    private GameMusic gameMusic;

    public ScoreBoard() {
        gameMusic = new GameMusic(); // Inisialisasi musik latar
        setupUI(); // Mengatur tampilan UI
        gameMusic.playMusicScore(); // Memutar musik skor
    }

    public void loadScores() {
        DatabaseHelper dbHelper = new DatabaseHelper();
        ResultSet resultSet = dbHelper.getScores(); // Mengambil skor dari database

        try {
            if (resultSet != null) { // Memeriksa jika ada data
                while (resultSet.next()) { // Iterasi data hasil query
                    String playerName = resultSet.getString("player_name");
                    int score = resultSet.getInt("score");

                    JPanel rowPanel = new JPanel(new GridLayout(1, 2, 20, 0));
                    rowPanel.setOpaque(false);
                    rowPanel.setBorder(BorderFactory.createEmptyBorder(5, 190, 5, 190));

                    JLabel playerLabel = new JLabel(playerName, SwingConstants.LEFT);
                    JLabel scoreLabel = new JLabel(String.valueOf(score), SwingConstants.RIGHT);

                    playerLabel.setFont(new Font("Arial", Font.PLAIN, 16));
                    playerLabel.setForeground(new Color(194, 178, 128));

                    scoreLabel.setFont(new Font("Arial", Font.PLAIN, 16));
                    scoreLabel.setForeground(new Color(194, 178, 128));

                    rowPanel.add(playerLabel); // Menambahkan nama pemain
                    rowPanel.add(scoreLabel); // Menambahkan skor pemain

                    scoresPanel.add(rowPanel); // Menambahkan panel baris ke panel utama
                }
            } else {
                JLabel noDataLabel = new JLabel("Tidak ada skor yang tersedia.", SwingConstants.CENTER);
                noDataLabel.setFont(new Font("Arial", Font.PLAIN, 20));
                noDataLabel.setForeground(new Color(194, 178, 128));
                noDataLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
                scoresPanel.add(noDataLabel); // Menampilkan pesan jika tidak ada data
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Menangani error database
            JLabel errorLabel = new JLabel("Gagal mengambil skor.", SwingConstants.CENTER);
            errorLabel.setFont(new Font("Arial", Font.PLAIN, 20));
            errorLabel.setForeground(Color.RED);
            errorLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
            scoresPanel.add(errorLabel);
        }
    }

    public void setupUI() {
        frame = new JFrame("Score Player"); // Membuat frame utama
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JPanel backgroundPanel = new JPanel() { // Panel dengan latar gradien
            @Override
            protected void paintComponent(Graphics g) {
                super.paintComponent(g);
                Color color1 = new Color(200, 230, 255);
                Color color2 = new Color(180, 216, 255);
                GradientPaint gradient = new GradientPaint(0, 0, color1, 0, getHeight(), color2);
                ((Graphics2D) g).setPaint(gradient);
                g.fillRect(0, 0, getWidth(), getHeight());
            }
        };
        backgroundPanel.setLayout(new BorderLayout());

        JPanel topPanel = new JPanel(new BorderLayout()); // Panel atas untuk tombol kembali dan judul
        topPanel.setOpaque(false);

        JButton backButton = new JButton(new ImageIcon(new ImageIcon("D:/praktikum/SEMESTER 5/PROJECT KELOMPOK 39/assets/images/back.png")
                .getImage().getScaledInstance(30, 30, Image.SCALE_SMOOTH))); // Tombol kembali
        backButton.setBorderPainted(false);
        backButton.setContentAreaFilled(false);
        backButton.setFocusPainted(false);
        backButton.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        backButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                gameMusic.stopSound(); // Menghentikan musik
                gameMusic.playMusicClick(); // Memutar efek suara klik

                new Timer(500, new ActionListener() { // Timer untuk efek suara sebelum berpindah
                    @Override
                    public void actionPerformed(ActionEvent evt) {
                        ((Timer) evt.getSource()).stop();
                        gameMusic.stopSound();
                        frame.dispose(); // Menutup frame saat ini
                        new Menu(); // Membuka menu utama
                    }
                }).start();
            }
        });

        topPanel.add(backButton, BorderLayout.WEST); // Menambahkan tombol kembali ke panel atas
        JLabel titleLabel = new JLabel("SCORE PEMAIN", SwingConstants.LEFT); // Judul
        titleLabel.setFont(new Font("Arial", Font.BOLD, 40));
        titleLabel.setForeground(new Color(174, 158, 108));
        titleLabel.setOpaque(false);
        titleLabel.setBorder(BorderFactory.createEmptyBorder(20, 180, 20, 0));

        topPanel.add(titleLabel, BorderLayout.CENTER); // Menambahkan judul ke panel atas

        backgroundPanel.add(topPanel, BorderLayout.NORTH); // Menambahkan panel atas ke panel latar belakang

        JPanel headerPanel = new JPanel(new GridLayout(1, 2, 20, 0)); // Header untuk kolom
        headerPanel.setOpaque(false);
        headerPanel.setBorder(BorderFactory.createEmptyBorder(10, 20, 10, 20));
        JLabel playerHeader = new JLabel("PLAYER", SwingConstants.CENTER);
        JLabel pointHeader = new JLabel("POINT", SwingConstants.CENTER);
        playerHeader.setFont(new Font("Arial", Font.BOLD, 20));
        pointHeader.setFont(new Font("Arial", Font.BOLD, 20));
        playerHeader.setForeground(new Color(194, 178, 128));
        pointHeader.setForeground(new Color(194, 178, 128));
        headerPanel.add(playerHeader);
        headerPanel.add(pointHeader);

        scoresPanel = new JPanel(); // Panel utama untuk menampilkan skor
        scoresPanel.setLayout(new BoxLayout(scoresPanel, BoxLayout.Y_AXIS));
        scoresPanel.setOpaque(false);

        loadScores(); // Memuat skor dari database

        JScrollPane scrollPane = new JScrollPane(scoresPanel); // Scroll untuk panel skor
        scrollPane.setOpaque(false);
        scrollPane.getViewport().setOpaque(false);
        scrollPane.setBorder(BorderFactory.createEmptyBorder());
        scrollPane.getHorizontalScrollBar().setPreferredSize(new Dimension(0, 0));
        scrollPane.getVerticalScrollBar().setPreferredSize(new Dimension(0, 0));
        scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);

        JPanel mainPanel = new JPanel(new BorderLayout()); // Panel utama
        mainPanel.setOpaque(false);
        mainPanel.add(headerPanel, BorderLayout.NORTH); // Menambahkan header
        mainPanel.add(scrollPane, BorderLayout.CENTER); // Menambahkan scroll pane

        backgroundPanel.add(mainPanel, BorderLayout.CENTER); // Menambahkan panel utama ke latar belakang
        frame.add(backgroundPanel); // Menambahkan latar belakang ke frame
        frame.setVisible(true); // Menampilkan frame
    }
}


