//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func genImage() -> UIImage {
        return [#imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4") ][Int.random(in: 0...4)]
    }
    
    @IBOutlet weak var headingLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        print("button Pressed")
        imageView.image = genImage()
        headingLabel.text = "Here is your mystery answer:"
    }
    
}

