//
//  ViewController.swift
//  DiceeApp
//
//  Created by bekarys abiev on 22.10.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceArray = [UIImage(named: "dice1"),
                    UIImage(named: "dice2"),
                    UIImage(named: "dice3"),
                    UIImage(named: "dice4"),
                    UIImage(named: "dice5"),
                    UIImage(named: "dice6")
                     
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPresent(_ sender: Any) {
        changeUIIcon()
    }
    func changeUIIcon() {
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in:0...5)]
    }
}

