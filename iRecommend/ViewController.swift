//
//  ViewController.swift
//  iRecommend
//
//  Created by admin on 5/12/20.
//  Copyright © 2020 Breanna Badalov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var instruments: [String] = ["Guitar", "Violin", "Base" , "Flute" , "Drums" , "Trumbone", "Cello" , "Piano", "Tambourine", "Maracas", "Bagpipes", "Harmonica", "Harp", "Banjo", "Accordian", "Trumpet", "Tuba", "Triangle", "Clarinet", "Piccolo"]
    @IBAction func Randomize(_ sender: Any) {
        RandomRecommendation()
    }
   @IBOutlet var RecommendationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        RandomRecommendation()
    }
    func RandomRecommendation() {
        let randominstruments = instruments.randomElement()
        if let label = RecommendationLabel{
            label.text = randominstruments
        }
        print(randominstruments)
    }
}
