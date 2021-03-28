//
//  ViewController.swift
//  Health IBM Calculator
//
//  Created by Sreenivas k on 27/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var HeightSlider: UISlider!
    
    @IBOutlet weak var HeightLable: UILabel!
    
    
    @IBOutlet weak var WeightLable: UILabel!
    
    var height=0.0
    var weight=0.0
    var bmi:Double=0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WeightLable.text="0 KG"
        HeightLable.text="0 M"
        
    }
    
    @IBAction func Height(_ sender: UISlider) {
        height=Double(sender.value)*10
        HeightLable.text = String(format: "%.1f" , height) + " M"
    }
    
    @IBAction func Weight(_ sender: UISlider) {
        weight=Double(sender.value)*100
        WeightLable.text = String(format: "%.1f" , weight) + " KG"
    }
    @IBAction func Calculate(_ sender: UIButton) {
        print(height)
        print(weight)
        bmi = weight/(height*height)
        print(bmi)
        self.performSegue(withIdentifier: "secondView", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondView" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmi=String(format: "%.2f", bmi)
        }
    }
    
}

