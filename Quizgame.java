import javax.swing.SwingUtilities;
import javax.swing.UIManager;

public class Quizgame {
    public static void main(String[] args) {
        // Inisialisasi antarmuka pengguna (GameBoard)
        SwingUtilities.invokeLater(() -> {
            try {
                // Atur tampilan dan nuansa (Look and Feel) untuk antarmuka
                UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
            } catch (Exception e) {
                e.printStackTrace();
            }

            // Jalankan game board
            new GameBoard();
        });
    }
}
