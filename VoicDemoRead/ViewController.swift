//
//  ViewController.swift
//  VoicDemoRead
//
//  Created by 山下瑞季 on 2017/10/18.
//  Copyright © 2017年 mizuki_yamashita. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVSpeechSynthesizerDelegate{
    
    @IBOutlet weak var playButton: UIButton!
    var recipe = "ボウルにはくりきこをふるい入れ、泡立てきで混ぜます"
    
    @IBAction func readRecipe(_ sender: Any) {
        let synthesizer = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: recipe)
        utterance.voice  = AVSpeechSynthesisVoice(language: "ja-JP")
        synthesizer.speak(utterance)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

