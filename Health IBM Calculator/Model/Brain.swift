//
//  Brain.swift
//  Health IBM Calculator
//
//  Created by Sreenivas k on 28/03/21.
//

import UIKit

struct Brain {
    var bmi:Double? = 0.0
    
    func getBMI()-> String{
  
        return String(format: "%.2f", bmi ?? 0.0 )
    }
    
    mutating func calculateBMI (height:Float, weight:Float){
     bmi = Double(weight/(height*height))
     }
}
