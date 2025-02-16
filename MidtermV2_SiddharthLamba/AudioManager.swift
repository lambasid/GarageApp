//
//  AudioManager.swift
//  MidtermV2_SiddharthLamba
//
//  Created by Siddharth Lamba on 2025-02-14.
//


import AVFoundation

class AudioManager {
    static let shared = AudioManager()
    var audioPlayer: AVAudioPlayer?

    private init() {}

    func playBackgroundMusic() {
        guard let path = Bundle.main.path(forResource: "song", ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.volume = 0.1
            audioPlayer?.play()
        } catch {
            print("Error playing background music: \(error.localizedDescription)")
        }
    }

    func stopBackgroundMusic() {
        audioPlayer?.stop()
    }
}
