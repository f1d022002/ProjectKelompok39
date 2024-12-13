import javax.sound.sampled.*;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class GameMusic extends Music {
    private final Map<String, Clip> clipCache = new HashMap<>(); // Cache untuk menyimpan Clip musik agar tidak perlu di-load ulang
    private Clip currentClip = null; // Clip yang sedang diputar
    private boolean isMusicPlaying = false; // Status apakah musik sedang diputar

    // Mendapatkan atau membuat Clip dari cache
    private Clip getClip(String filePath) throws UnsupportedAudioFileException, IOException, LineUnavailableException {
        if (clipCache.containsKey(filePath)) {
            return clipCache.get(filePath); // Ambil Clip dari cache jika sudah ada
        }
        File musicFile = new File(filePath);
        AudioInputStream audioStream = AudioSystem.getAudioInputStream(musicFile);
        Clip clip = AudioSystem.getClip();
        clip.open(audioStream); // Membuka file audio
        clipCache.put(filePath, clip); // Simpan Clip ke cache
        return clip;
    }

    // Memutar musik dengan filePath dan opsi loop
    private void playMusic(String filePath, boolean loop) {
        new Thread(() -> { // Jalankan dalam thread terpisah untuk mencegah lag
            try {
                if (currentClip != null && currentClip.isRunning()) {
                    currentClip.stop(); // Hentikan musik sebelumnya jika sedang berjalan
                }

                currentClip = getClip(filePath); // Ambil Clip dari cache atau load baru
                if (loop) {
                    currentClip.loop(Clip.LOOP_CONTINUOUSLY); // Ulangi musik terus-menerus
                } else {
                    currentClip.start(); // Mainkan musik sekali
                }
                isMusicPlaying = true; // Update status bahwa musik sedang diputar

                // Listener untuk memantau saat musik berhenti
                currentClip.addLineListener(event -> {
                    if (event.getType() == LineEvent.Type.STOP) {
                        isMusicPlaying = false; // Reset status ketika musik selesai
                    }
                });
            } catch (UnsupportedAudioFileException | IOException | LineUnavailableException e) {
                System.out.println("Error playing music: " + e.getMessage()); // Tangani error saat memutar musik
            }
        }).start();
    }

    // Memutar efek suara tanpa mengganggu musik latar
    public void playSoundEffect(String filePath) {
        try {
            File file = new File(filePath);
            AudioInputStream audioStream = AudioSystem.getAudioInputStream(file);
            Clip clip = AudioSystem.getClip();
            clip.open(audioStream);
            clip.start(); // Mainkan efek suara sekali
        } catch (Exception e) {
            e.printStackTrace(); // Tangani error saat memutar efek suara
        }
    }

    @Override
    public void playMusicMenu() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\menu.wav", true); // Musik menu diputar terus-menerus
        }
    }

    @Override
    public void playMusicScore() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\score.wav", true); // Musik skor diputar terus-menerus
        }
    }

    @Override
    public void playMusicPlayer() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\player.wav", true); // Musik pemain diputar terus-menerus
        }
    }

    @Override
    public void playMusicClick() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\klik.wav", false); // Efek klik hanya diputar sekali
        }
    }

    @Override
    public void playMusicStart() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\playGame.wav", false); // Musik start diputar sekali
        }
    }

    @Override
    public void playMusicWin() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\win.wav", false); // Musik menang diputar sekali
        }
    }

    @Override
    public void playMusicGameOver() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\gameOver.wav", false); // Musik game over diputar sekali
        }
    }

    @Override
    public void playMusicTimeOut() {
        if (!isMusicPlaying) {
            playMusic("D:\\praktikum\\SEMESTER 5\\PROJECT KELOMPOK 39\\assets\\musics\\timeOut.wav", false); // Musik time out diputar sekali
        }
    }

    @Override
    public void stopSound() {
        if (currentClip != null && currentClip.isRunning()) {
            currentClip.stop(); // Hentikan musik yang sedang berjalan
        }
        isMusicPlaying = false; // Reset status
    }
}
