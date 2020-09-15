//
//  ViewController.swift
//  Test2
//
//  Created by Seth Amballa on 1/23/20.
//  Copyright © 2020 Seth Amballa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    
    let listNumCard = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    
    let suits = ["C", "D", "H", "S"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealButton(_ sender: Any) {
        
        var first = Int.random(in: 0...12)
        var second = Int.random(in: 1...3)
        
        var first1 = Int.random(in: 0...12)
        var second1 = Int.random(in: 1...3)
        
        while(first == first1 && second == second1){
            first = Int.random(in: 0...12)
            second = Int.random(in: 1...3)
            
            first1 = Int.random(in: 0...12)
            second1 = Int.random(in: 1...3)
        }
        
        let leftSymbol = listNumCard[first] + suits[second]
        let rightSymbol = listNumCard[first1] + suits[second1]

        
        leftCard.image = UIImage(named: leftSymbol)
        rightCard.image = UIImage(named: rightSymbol)
    }
    
}

