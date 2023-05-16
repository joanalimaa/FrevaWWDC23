//
//  AudioManager.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 19/04/23.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playAudio(audio: String) {
    let url = Bundle.main.url(forResource: audio, withExtension: "wav")
    
    guard url != nil else {
        return
    }
    
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player.volume = 1
        player?.play()
        
    } catch {
        print("error")
    }
}
