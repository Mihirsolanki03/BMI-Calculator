//
//  secondVC.swift
//  bmiCalculator
//
//  Created by Mihir Solanki on 18/06/21.
//

import UIKit

class secondVC: UIViewController {
    
    @IBOutlet weak var reButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    var bmiValue = "0.1"
    
    var val1 = ""
    
    
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        
        reButton.layer.cornerRadius = reButton.bounds.height / 2
       
        label.text = bmiValue
        
        label2.text = val1
        
       
    
       
        
    }
    @IBAction func reCalculate(_ sender: Any) {
        
        _ = storyboard?.instantiateViewController(identifier: "secondVC") as! secondVC
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    

 
}
