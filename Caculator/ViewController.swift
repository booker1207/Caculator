//
//  ViewController.swift
//  Caculator
//
//  Created by Booker on 2018/3/18.
//  Copyright © 2018年 Booker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weakq var display: UILabel!
    
    var userIsInMiddleOfTyping: Bool = false
    
    @IBAction func touchDight(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        
        
        if userIsInMiddleOfTyping{
            let textCurrentlyInDisplay = display!.text!
            display.text = textCurrentlyInDisplay + digit
        }else{
            display.text = digit
            if Double(display.text!) != 0{
                userIsInMiddleOfTyping = true
            }
        }
    }
    
    var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleOfTyping = false

        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            case "AC":
                displayValue = 0
           
                
            
            default:
                break
            }
        }
    }
    
    
}

