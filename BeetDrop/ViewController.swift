//
//  ViewController.swift
//  BeetDrop
//
//  Created by Charlie  Velazquez on 5/15/18.
//  Copyright © 2018 GoonPlatoon. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    @discardableResult func playSound(named soundName: String) -> AVAudioPlayer {
        let soundURL = Bundle.main.url(forResource: soundName, withExtension: "wav")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.prepareToPlay()
        } catch let error as NSError {
            print(error.debugDescription)
        }
        audioPlayer.play()
        return audioPlayer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let bassUrl = Bundle.main.url(forResource: "Kick", withExtension: "wav")
//        let clapUrl = Bundle.main.url(forResource: "Calp", withExtension: "wav")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func BassPlay(_ sender: UIButton) {
        playSound(named: "Kick")
    }
    
    @IBAction func ClapPlay(_ sender: UIButton) {
        playSound(named: "Clap")
    }
    
}

