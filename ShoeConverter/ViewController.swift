//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Hans Sterken on 02-10-14.
//  Copyright (c) 2014 Hans Sterken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mensShoeSizeTextFlield: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    // extra comment
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextFlield.text.toInt()!
        mensConvertedShoeSizeLabel.hidden = false
        
        let conversioConstant = 30
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversioConstant)" + " in European Shoe Size"
        
        mensShoeSizeTextFlield.text = ""
        mensShoeSizeTextFlield.resignFirstResponder()

        
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double ((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()
        
        
    }
    
    
    
}

