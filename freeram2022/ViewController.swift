//
//  ViewController.swift
//  freeram2022
//
//  Created by Mathieu Fitzgerald on 16.09.22.
//

import UIKit
import AVFoundation
var audioPlayer = AVAudioPlayer()

class ViewController: UIViewController {
    
    @IBOutlet weak var MySlider: UISlider!
    @IBOutlet weak var MyLabel: UILabel!
    @IBOutlet weak var MyButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sound = Bundle.main.path(forResource: "defaultsound", ofType: "mp3")
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            
            print(error)
        }
        audioPlayer.play()
        MySlider.minimumValue = 1
        MySlider.maximumValue = 32
        MyButton.setTitle("Install " + String(format: "%.0f", MySlider.value) + "GB RAM", for: .normal)
        

    }

    @IBAction func MySliderAction(_ sender: UISlider) {
        let value = sender.value
        MyButton.setTitle("Install " + String(format: "%.0f", MySlider.value) + "GB RAM", for: .normal)
    
    }
}

        

    



