import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class ScoreBoard extends JFrame implements ScoreBoardActions {
    private JFrame frame;
    private JPanel scoresPanel;
    private GameMusic gameMusic;

    public ScoreBoard() {
        gameMusic = new GameMusic();

        setupUI();

        gameMusic.playMusicScore();
    }
    @Override
    public void loadScores() {
        DatabaseHelper dbHelper = new DatabaseHelper();
        ResultSet resultSet = dbHelper.getScores();

        try {
            if (resultSet != null) {
                while (resultSet.next()) {
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

                    rowPanel.add(playerLabel);
                    rowPanel.add(scoreLabel);

                    scoresPanel.add(rowPanel);
                }
            } else {
                JLabel noDataLabel = new JLabel("Tidak ada skor yang tersedia.", SwingConstants.CENTER);
                noDataLabel.setFont(new Font("Arial", Font.PLAIN, 20));
                noDataLabel.setForeground(new Color(194, 178, 128));
                noDataLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
                scoresPanel.add(noDataLabel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            JLabel errorLabel = new JLabel("Gagal mengambil skor.", SwingConstants.CENTER);
            errorLabel.setFont(new Font("Arial", Font.PLAIN, 20));
            errorLabel.setForeground(Color.RED);
            errorLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
            scoresPanel.add(errorLabel);
        }
    }

    @Override
    public void setBackgroundImage(String imagePath) {
    }

    @Override
    public void setupUI() {
        frame = new JFrame("Score Player");
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JPanel backgroundPanel = new JPanel() {
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

        JPanel topPanel = new JPanel(new BorderLayout());
        topPanel.setOpaque(false);

        JButton backButton = new JButton(new ImageIcon(new ImageIcon("D:/praktikum/SEMESTER 5/PROJECT KELOMPOK 39/assets/images/back.png")
                .getImage().getScaledInstance(30, 30, Image.SCALE_SMOOTH)));
        backButton.setBorderPainted(false);
        backButton.setContentAreaFilled(false);
        backButton.setFocusPainted(false);
        backButton.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        backButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                frame.dispose();
                gameMusic.stopSound();
                new Menu();
            }
        });

        topPanel.add(backButton, BorderLayout.WEST);

        JLabel titleLabel = new JLabel("SCORE PEMAIN", SwingConstants.LEFT);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 40));
        titleLabel.setForeground(new Color(174, 158, 108));
        titleLabel.setOpaque(false);
        titleLabel.setBorder(BorderFactory.createEmptyBorder(20, 180, 20, 0));

        topPanel.add(titleLabel, BorderLayout.CENTER);

        backgroundPanel.add(topPanel, BorderLayout.NORTH);

        JPanel headerPanel = new JPanel(new GridLayout(1, 2, 20, 0));
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

        scoresPanel = new JPanel();
        scoresPanel.setLayout(new BoxLayout(scoresPanel, BoxLayout.Y_AXIS));
        scoresPanel.setOpaque(false);

        loadScores();

        JScrollPane scrollPane = new JScrollPane(scoresPanel);
        scrollPane.setOpaque(false);
        scrollPane.getViewport().setOpaque(false);
        scrollPane.setBorder(BorderFactory.createEmptyBorder());
        scrollPane.getHorizontalScrollBar().setPreferredSize(new Dimension(0, 0));
        scrollPane.getVerticalScrollBar().setPreferredSize(new Dimension(0, 0));
        scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);

        JPanel mainPanel = new JPanel(new BorderLayout());
        mainPanel.setOpaque(false);
        mainPanel.add(headerPanel, BorderLayout.NORTH);
        mainPanel.add(scrollPane, BorderLayout.CENTER);

        backgroundPanel.add(mainPanel, BorderLayout.CENTER);
        frame.add(backgroundPanel);
        frame.setVisible(true);
    }
}
