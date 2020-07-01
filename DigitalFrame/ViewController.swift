//
//  ViewController.swift
//  DigitalFrame
//
//  Created by JSMAC on 2020/07/02.
//  Copyright © 2020 JSPRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named: "1.jpg")!,
        UIImage(named: "2.jpg")!,
        UIImage(named: "3.jpg")!,
        UIImage(named: "4.jpg")!,
        UIImage(named: "5.jpg")!,
        UIImage(named: "6.jpg")!,
        UIImage(named: "7.jpg")!]
        imgView.animationImages = cuteImages
        imgView.animationDuration = TimeInterval(speedSlider.value)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        
    }

    @IBAction func toggleButton(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: .normal)
            
        } else {
            imgView.animationDuration = TimeInterval(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: .normal)
        }

    }
    
    @IBAction func slideAction(_ sender: Any) {
        imgView.animationDuration = TimeInterval(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: .normal)
//        print(speedSlider.value)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
    
}

