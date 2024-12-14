import java.sql.*;
import java.util.ArrayList;

public class DatabaseHelper {
    private static final String DATABASE_NAME = "findmatch";
    private static final String QUESTIONS_TABLE_NAME = "questions3";
    private static final String SCORES_TABLE_NAME = "scores";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/" + DATABASE_NAME;
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public ArrayList<Match> loadQuestions() {
        ArrayList<Match> questionList = new ArrayList<>();
        String query = "SELECT * FROM " + QUESTIONS_TABLE_NAME;

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                String questions = rs.getString("questions");
                String correctAnswer = rs.getString("correctAnswer");
                String imagePath1 = rs.getString("imagePath1");
                String imagePath2 = rs.getString("imagePath2");
                String imagePath3 = rs.getString("imagePath3");

                questionList.add(new Match(questions, correctAnswer, imagePath1, imagePath2, imagePath3));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return questionList;
    }

    public void saveScore(String playerName, int score) {
        String query = "INSERT INTO " + SCORES_TABLE_NAME + " (player_name, score) VALUES (?, ?)";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, playerName);
            pstmt.setInt(2, score);
            pstmt.executeUpdate();
            System.out.println("Skor berhasil disimpan untuk " + playerName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet getScores(boolean sortedDescending) {
        String query = "SELECT * FROM " + SCORES_TABLE_NAME;
        if (sortedDescending) {
            query += " ORDER BY score DESC, timestamp DESC, id DESC";
        } else {
            query += " ORDER BY timestamp DESC, id DESC";
        }

        try {
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            Statement stmt = conn.createStatement();
            return stmt.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // Mengambil skor yang diurutkan dari yang terbesar ke terkecil
    public ResultSet getSortedScores() {
        String query = "SELECT * FROM " + SCORES_TABLE_NAME + " ORDER BY score DESC, timestamp DESC";
        try {
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            Statement stmt = conn.createStatement();
            return stmt.executeQuery(query); // Mengembalikan hasil query
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

}