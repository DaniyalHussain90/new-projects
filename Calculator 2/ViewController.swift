//
//  ViewController.swift
//  Calculator 2
//
//  Created by Daniyal Hussain on 22/03/2021.
//  Copyright © 2021 Daniyal Hussain. All rights reserved.
//
//
import UIKit
//
class ViewController: UIViewController {
    var first = ""
    var second = ""
    var function = ""
    var result: Double = 0.0
    var userinput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in buttonCorner {
            button.layer.cornerRadius = button.frame.size.height / 2 ;
        }
        }
    
    @IBOutlet var buttonCorner: [UIButton]!
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    
    
    @IBAction func clearButton(_ sender: Any) {
    
        first = ""
         second = ""
         function = ""
        result = 0.0
         userinput = ""
        labelDisplay.text = "0"
    
    }
    @IBAction func divideButton(_ sender: Any) {
        
        function = "/"
        first = userinput
        userinput = ""
    }
    @IBAction func multipleButton(_ sender: Any) {
        
        function = "*"
        first = userinput
        userinput = ""
    }
    @IBAction func plusButton(_ sender: Any) {
        
        function = "+"
        first = userinput
        userinput = ""
        
    }
    @IBAction func minusButton(_ sender: Any) {
        function = "-"
        first = userinput
        userinput = ""
    }
    @IBAction func equalButton(_ sender: Any) {
        second = userinput
        var firstinput = 0.0
        var secondinput = 0.0
        firstinput = Double(first)!
        secondinput = Double(second)!
        if(function == "+")
        {
        result = firstinput + secondinput
            labelDisplay.text = String(result.clean)
        }
    else if (function == "-")
        {
        result = firstinput - secondinput
            labelDisplay.text = String(result.clean)
        }
        else if (function == "*")
        {
            
        result = firstinput * secondinput
            labelDisplay.text = String(result.clean)
        }
        else
        {
        result = firstinput / secondinput
            labelDisplay.text = String(result.clean)
        }
       
    }
    @IBAction func ninePressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "9"
        labelDisplay.text! += userinput
    }
    @IBAction func eightPressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "8"
        labelDisplay.text! += userinput
    }
    @IBAction func sevenPressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "7"
        labelDisplay.text! += userinput
    }
    @IBAction func sixPressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "6"
        labelDisplay.text! += userinput
    }
    @IBAction func fivePressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "5"
        labelDisplay.text! += userinput
    }
    @IBAction func fourPressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "4"
        labelDisplay.text! += userinput
    }
    @IBAction func threePressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "3"
        labelDisplay.text! += userinput
    }
    @IBAction func twoPressed(_ sender: Any) {
        labelDisplay.text = ""
        userinput += "2"
        labelDisplay.text! += userinput
    }
    @IBAction func onePressed(_ sender: Any) {
        
        labelDisplay.text = ""
        userinput += "1"
        labelDisplay.text! += userinput
    }
    @IBAction func zeroButton(_ sender: Any) {

        labelDisplay.text = ""
        userinput += "0"
        labelDisplay.text = userinput
    }
}


///label.text.append("\(123)")
extension Double {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
