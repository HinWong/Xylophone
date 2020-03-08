//
//  ViewController.swift
//  Xylophone 2.0
//
//  Created by Hin Wong on 1/30/20.
//  Copyright © 2020 Hin Wong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer?
    let sounds = ["c", "d1", "e1", "f", "g", "a", "b", "c2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
 
    @IBAction func bars(_ sender: UIButton) {
        
        // Get tags
        let tag = sender.tag
        
        // Get the file name and pass it into the method
        playSounds(filename: sounds[tag])
        
        
    }
    
    func playSounds (filename:String) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: filename, withExtension: "wav")
        
        // Make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
    }
    
    
}
}
