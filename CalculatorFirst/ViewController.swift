//
//  ViewController.swift
//  CalculatorFirst
//
//  Created by xxx on 5/21/19.
//  Copyright © 2019 mgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var lastVal:Double = 0
    var curruntVal:Double = 0
    var lableIsOp = false
    var lastOpIsEqual = false
    @IBOutlet weak var disblayDigit: UILabel!

    @IBAction func clearData(_ sender: UIButton) {
        disblayDigit.text = "0"
        curruntVal = 0
        lastVal = 0
    }
    var op : String = ""
    @IBAction func btnOperation(_ sender: UIButton) {
   
        op  = sender.currentTitle!;
        if(lableIsOp == false){
         if(disblayDigit.text! != "0"){
        lastVal = Double(disblayDigit.text!)!
    }
        }
        
        switch op {
        case "+":
            disblayDigit.text = "+"
            lableIsOp = true
        case "-":
            disblayDigit.text = "-"
            lableIsOp = true
        case "/":
            disblayDigit.text = "/"
            lableIsOp = true
        case "*":
            disblayDigit.text = "*"
            lableIsOp = true
        default:
            disblayDigit.text = "0"
            lableIsOp = false
            
        }
     
        
    }

    @IBAction func btnEqual(_ sender: UIButton) {
        lastOpIsEqual = true
        switch op {
        case "+":
            
           disblayDigit.text = String(lastVal + curruntVal)
        case "-":
           disblayDigit.text = String(lastVal - curruntVal)
        case "/":
            disblayDigit.text = String(lastVal / curruntVal)
        case "*":
            disblayDigit.text = String(lastVal * curruntVal)
        default:
            disblayDigit.text = "0"
            lableIsOp = false
            
        }
        
    }
    @IBAction func btnClick(_ sender: UIButton) {
        lableIsOp = false
        if(lastOpIsEqual == true){
            lastOpIsEqual = false
            disblayDigit.text = "0"

        }
        if(disblayDigit.text == "+"||disblayDigit.text == "-"||disblayDigit.text == "*"||disblayDigit.text == "/"){
            disblayDigit.text = sender.currentTitle
            curruntVal = Double(sender.currentTitle!)!
            
        }else {
        let numbers = sender.currentTitle!
            if(disblayDigit.text == "0"){
                disblayDigit.text = sender.currentTitle
                curruntVal = Double(sender.currentTitle!)!
                
            }else{
                if(String(curruntVal) != "+" && String(curruntVal) != "-" && String(curruntVal) != "*" && String(curruntVal) != "/"){
                    disblayDigit.text = disblayDigit.text! + numbers
            
                        curruntVal = Double(sender.currentTitle!)!
                    
                }
            }
        }
        print(curruntVal)
        print(lastVal)
    }
}

