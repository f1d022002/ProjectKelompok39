import javax.swing.SwingUtilities;

public class Main {
    public static void main(String[] args) {
        // Menjalankan GUI di event dispatch thread untuk memastikan thread-safe
        SwingUtilities.invokeLater(Menu::new); // Memulai aplikasi dengan membuka menu utama
    }
}
