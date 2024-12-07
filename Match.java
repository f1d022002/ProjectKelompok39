public class Match {
    private String clue;
    private String correctAnswer;
    private String imagePath1;
    private String imagePath2;
    private String imagePath3;

    public Match(String clue, String correctAnswer, String imagePath1, String imagePath2, String imagePath3) {
        this.clue = clue;
        this.correctAnswer = correctAnswer;
        this.imagePath1 = imagePath1;
        this.imagePath2 = imagePath2;
        this.imagePath3 = imagePath3;
    }

    public String getClue() {
        return clue;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public String getImagePath1() {
        return imagePath1;
    }

    public String getImagePath2() {
        return imagePath2;
    }

    public String getImagePath3() {
        return imagePath3;
    }
}