public class Match {
    // Soal untuk mencocokkan gambar
    private String questions;

    // Jawaban yang benar
    private String correctAnswer;

    // Jalur gambar pertama
    private String imagePath1;

    // Jalur gambar kedua
    private String imagePath2;

    // Jalur gambar ketiga
    private String imagePath3;

    // Konstruktor untuk menginisialisasi objek Match
    public Match(String questions, String correctAnswer, String imagePath1, String imagePath2, String imagePath3) {
        this.questions = questions;
        this.correctAnswer = correctAnswer;
        this.imagePath1 = imagePath1;
        this.imagePath2 = imagePath2;
        this.imagePath3 = imagePath3;
    }

    // Mendapatkan soal
    public String getQuestions() {
        return questions;
    }

    // Mendapatkan jawaban yang benar
    public String getCorrectAnswer() {
        return correctAnswer;
    }

    // Mendapatkan jalur gambar pertama
    public String getImagePath1() {
        return imagePath1;
    }

    // Mendapatkan jalur gambar kedua
    public String getImagePath2() {
        return imagePath2;
    }

    // Mendapatkan jalur gambar ketiga
    public String getImagePath3() {
        return imagePath3;
    }
}
