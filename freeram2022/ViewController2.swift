//
//  ViewController2.swift
//  freeram2022
//
//  Created by Mathieu Fitzgerald on 17.09.22.
//

import UIKit

class ViewController2: UIViewController {
    var timer = Timer()
    @IBOutlet weak var ProgressBar: UIProgressView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProgressBar.progress = 0.0
        spinner.startAnimating()
        
        var progress: Float = 0.0
        ProgressBar.progress = progress
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true, block: { (timer) in
            
            progress += 0.01
            self.ProgressBar.progress = progress
            
            if self.ProgressBar.progress == 1.0
            {
                self.ProgressBar.progress = 0.0
                self.spinner.stopAnimating()
                let storyboard = UIStoryboard(name: "BrokenPhone", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "BrokenPhone") as UIViewController
                self.present(vc, animated: true, completion: nil)
    

                
            }
        })
    }

        }
    
//    @IBAction func ProgressView(_ sender: UISlider) {
//        var progress: Float = 0.0
//        ProgressBar.progress = progress
        
//        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            
//            progress += 0.01
//            self.ProgressBar.progress = progress
            
//            if self.ProgressBar.progress == 1.0
//            {
//                self.ProgressBar.progress = 0.0
//            }
//       })
//    }
    
//}

