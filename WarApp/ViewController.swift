//
//  ViewController.swift
//  WarApp
//
//  Created by Jordan Valansi on 3/14/18.
//  Copyright © 2018 Jordan Valansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var left_image_view: UIImageView!
    
    @IBOutlet weak var right_image_view: UIImageView!
    
    @IBOutlet weak var left_score_label: UILabel!
    
    @IBOutlet weak var right_score_label: UILabel!

    var left_score = 0
    var right_score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func deal_tapped(_ sender: Any) {
    //randomize 2 numbers
        let left_random_number = arc4random_uniform(13) + 2
        let right_random_number = arc4random_uniform(13) + 2
    //change image view according to randomized numbers
        left_image_view.image = UIImage(named: "card\(left_random_number)")
        right_image_view.image = UIImage(named: "card\(right_random_number)")
    //compare the 2 numbers
        if left_random_number>right_random_number { //left wins
              //update score
            left_score += 1
              //update label
            left_score_label.text = String(left_score)
        }
        else if right_random_number>left_random_number{ //right wins
              //update score
            right_score += 1
              //update label
            right_score_label.text = String(right_score)

        }
        else { //tie
            
        }
    }
}

