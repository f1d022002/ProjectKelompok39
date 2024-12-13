public abstract class Music {
    // Memutar musik untuk menu utama
    abstract public void playMusicMenu();

    // Memutar musik untuk layar skor
    abstract public void playMusicScore();

    // Memutar musik ketik pemain input nama
    abstract public void playMusicPlayer();

    // Memutar efek suara klik
    abstract public void playMusicClick();

    // Memutar musik saat permainan dimulai
    abstract public void playMusicStart();

    // Memutar musik ketika pemain menang
    abstract public void playMusicWin();

    // Memutar musik ketika pemain kalah
    abstract public void playMusicGameOver();

    // Memutar musik ketika pemain kehabisan waktu
    abstract public void playMusicTimeOut();

    // Menghentikan semua suara/musik yang sedang dimainkan
    abstract public void stopSound();
}