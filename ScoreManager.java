import java.io.*;

public class ScoreManager {
    private String filePath;

    public ScoreManager(String filePath) {
        this.filePath = filePath;
        try {
            File file = new File(filePath);
            if (!file.exists()) {
                file.createNewFile();
            }
        } catch (IOException e) {
            System.err.println("Gagal membuat file skor: " + e.getMessage());
        }
    }

    public String getScores() {
        StringBuilder scores = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                scores.append(line).append("\n");
            }
        } catch (IOException e) {
            scores.append("Belum ada skor yang tersimpan!");
        }
        return scores.toString();
    }

    public void saveScore(String score) {
        try (PrintWriter writer = new PrintWriter(new FileWriter(filePath, true))) {
            writer.println(score);
        } catch (IOException e) {
            System.err.println("Gagal menyimpan skor: " + e.getMessage());
        }
    }
}
