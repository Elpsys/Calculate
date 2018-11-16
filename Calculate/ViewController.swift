//
//  ViewController.swift
//  Calculate
//
//  Created by s20171103186 on 2018/10/12.
//  Copyright © 2018年 s20171103186. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var temp:Double = 0
    var Operator:Int = 0
    var temp1: Double = 0
    var control = 0
    @IBOutlet weak var output: UITextField!
    @IBAction func add(_ sender: UIButton) {
        if output.text == ""
        {
            output.text = "0"
        }
        else if output.text != "" && Operator == 1
        {
            temp = temp + Double(output.text!)!
            output.text = "\(temp)"
        }
        else if output.text != "" && Operator == 2
        {
            temp = temp - Double(output.text!)!
            output.text = "\(temp)"
        }
        else if output.text != "" && Operator == 3
        {
            temp = temp * Double(output.text!)!
            output.text = "\(temp)"
        }
        else if output.text != "" && Operator == 4
        {
            temp = temp / Double(output.text!)!
            output.text = "\(temp)"
        }
        else
        {
            temp = Double(output.text!)!
            output.text = ""
            Operator = 1
        }
        temp1 = 0
    }
    @IBAction func subtraction(_ sender: UIButton) {
        if output.text == ""
        {
            output.text = "0"
        }
        else
        {
            temp = Double(output.text!)!
            output.text = ""
            Operator = 2
        }
        temp1 = 0
    }
    @IBAction func multip(_ sender: UIButton) {
        if output.text == ""
        {
            output.text = "0"
        }
        else
        {
            temp = Double(output.text!)!
            output.text = ""
            Operator = 3
        }
        temp1 = 0
    }
    @IBAction func division(_ sender: UIButton) {
        if output.text == ""
        {
            output.text = "0"
        }
        else
        {
            temp = Double(output.text!)!
            output.text = ""
            Operator = 4
        }
        temp1 = 0
    }
    @IBAction func clear(_ sender: UIButton) {
        output.text = ""
        temp1 = 0
        Operator = 0
    }
    @IBAction func equal(_ sender: UIButton) {
        if Operator == 1
        {
            temp = temp + Double(output.text!)!
            output.text = "\(temp)"
        }
        if Operator == 2
        {
            temp = temp - Double(output.text!)!
            output.text = "\(temp)"
        }
        if Operator == 3
        {
            temp = temp * Double(output.text!)!
            output.text = "\(temp)"
        }
        if Operator == 4
        {
            temp = temp / Double(output.text!)!
            output.text = "\(temp)"
        }
        temp1 = 0
    }
    @IBAction func button(_ sender: UIButton){
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "1"
        }
        else
        {
            output.text = output.text! + "1"
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "2"
        }
        else
        {
            output.text = output.text! + "2"
        }
    }
    @IBAction func button3(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "3"
        }
        else
        {
            output.text = output.text! + "3"
        }
    }
    @IBAction func button4(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "4"
        }
        else
        {
            output.text = output.text! + "4"
        }
    }
    @IBAction func button5(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "5"
        }
        else
        {
            output.text = output.text! + "5"
        }
    }
    @IBAction func button6(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "6"
        }
        else
        {
            output.text = output.text! + "6"
        }
    }
    @IBAction func button7(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "7"
        }
        else
        {
            output.text = output.text! + "7"
        }
    }
    @IBAction func button8(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "8"
        }
        else
        {
            output.text = output.text! + "8"
        }
    }
    @IBAction func button9(_ sender: Any) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "9"
        }
        else
        {
            output.text = output.text! + "9"
        }
    }
    @IBAction func button0(_ sender: UIButton) {
        if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "0"
        }
        else
        {
            output.text = output.text! + "0"
        }
    }
 
    @IBAction func point(_ sender: UIButton) {
        if temp1 == 1
        {
            
        }
        else if output.text == ""
        {
            output.text = "0."
        }
        else
        {
            output.text = output.text! + "."
            temp1 = 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

