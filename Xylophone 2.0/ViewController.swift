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
    
    //MARK: - OUTLETS
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var gButton: UIButton!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var c2Button: UIButton!
    
    
    //MARK: - Audio properties
    
    var audioPlayer:AVAudioPlayer?
    let sounds = ["c", "d1", "e1", "f", "g", "a", "b", "c2"]

    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        cButton.layer.cornerRadius = 40
        dButton.layer.cornerRadius = 40
        eButton.layer.cornerRadius = 40
        fButton.layer.cornerRadius = 40
        gButton.layer.cornerRadius = 40
        aButton.layer.cornerRadius = 40
        bButton.layer.cornerRadius = 40
        c2Button.layer.cornerRadius = 40
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

