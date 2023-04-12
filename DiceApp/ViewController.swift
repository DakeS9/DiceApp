//
//  ViewController.swift
//  DiceApp
//
//  Created by Dauren Sunnatulla on 19.08.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    @IBOutlet var button1: UIButton!
    @IBOutlet var label1: UILabel!
    
    
    let images = [
        UIImage(named: "dice-1"),
        UIImage(named: "dice-2"),
        UIImage(named: "dice-3"),
        UIImage(named: "dice-4"),
        UIImage(named: "dice-5"),
        UIImage(named: "dice-6")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonSetup()
        labelSetup()
        diceImageView1.image = UIImage(named: "dice-3")
        diceImageView2.image = UIImage(named: "dice-4")
    }
    
    func buttonSetup() {
        button1.layer.cornerRadius = button1.frame.size.height/2
        //button1.layer.cornerRadius = 50
        button1.layer.borderWidth = 1
    }
    
    func labelSetup() {
        label1.text = "Dice APP"
        label1.textColor = UIColor.blue
        label1.font = UIFont.systemFont(ofSize: 60)
    }
    
    @IBAction func buttonThrow(_ sender: Any) {
        print("User tapped button")
        
        diceImageView1.image = images[randomImageIndex()]
        diceImageView2.image = images[randomImageIndex()]
    }
    
    func randomImageIndex() -> Int {
        return Int.random(in: 0..<images.count)
    }
}

