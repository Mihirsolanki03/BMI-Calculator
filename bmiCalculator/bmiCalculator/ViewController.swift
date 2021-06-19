//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Mihir Solanki on 17/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var heightS: UISlider!
    @IBOutlet weak var weightS: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButton.layer.cornerRadius = calculateButton.bounds.height / 2
        navigationController?.navigationBar.isHidden = true
       
     
        
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
        
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
    @IBAction func Caculation(_ sender: UIButton) {
        
        
        
        
        let height = heightS.value
        let weight = weightS.value
        
        let BMI = weight / (height*height)
        
        
        
        let vc = storyboard?.instantiateViewController(identifier: "secondVC") as! secondVC
        
        self.navigationController?.pushViewController(vc, animated: true)
       
        
        if BMI < 18.5 {
            
            vc.val1 = "Underweight 😱"
        
        }
        
        else if BMI > 18.5 && BMI < 24.9 {
            vc.val1 = "Fit 😍"
        }
        else{
            
            vc.val1 = "Mottu 😹"
         
        }
        vc.bmiValue = String(format: "%.1f", BMI)
        
      
       
        
    }
    
  
    
}

