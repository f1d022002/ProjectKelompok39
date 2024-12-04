import javax.swing.*;

public class Quizgame {
    private static final String SCORE_FILE = "scores.txt";

    public static void main(String[] args) {
        // Buat instance ScoreManager untuk menyimpan dan membaca skor
        ScoreManager scoreManager = new ScoreManager(SCORE_FILE);

        // Tampilkan menu utama
        SwingUtilities.invokeLater(() -> {
            Menu menu = new Menu();
            menu.startButton.addActionListener(e -> {
                // Mulai permainan
                menu.dispose();
                SwingUtilities.invokeLater(() -> new ShapeQuiz(scoreManager));
            });

            menu.scoreButton.addActionListener(e -> {
                // Tampilkan skor
                JOptionPane.showMessageDialog(menu,
                        scoreManager.getScores(),
                        "Daftar Skor",
                        JOptionPane.INFORMATION_MESSAGE);
            });

            menu.exitButton.addActionListener(e -> {
                // Keluar dari aplikasi
                System.exit(0);
            });
        });

    }
}
