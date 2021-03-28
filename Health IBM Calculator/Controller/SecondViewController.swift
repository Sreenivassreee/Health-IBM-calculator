//
//  SecondViewController.swift
//  Health IBM Calculator
//
//  Created by Sreenivas k on 27/03/21.
//

import UIKit

class SecondViewController: UIViewController {
    var bmi:String?
    
    @IBOutlet weak var BMI: UILabel!
    override func viewDidLoad(){
        super.viewDidLoad()
        BMI.text=bmi
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
