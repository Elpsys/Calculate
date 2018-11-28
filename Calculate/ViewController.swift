//
//  ViewController.swift
//  Calculate
//
//  Created by s20171103186 on 2018/10/12.
//  Copyright © 2018年 s20171103186. All rights reserved.
//

import UIKit
protocol Stack {
    associatedtype Element
    var isEmpty:Bool {get}
    var size:Int{get}
    var peek:Element?{get}
    mutating func push(_ newElement:Element)
    mutating func pop()->Element?
}
class ViewController: UIViewController {
    

    var temp:Double = 0
    var Operator:Int = 0
    var temp1:Double = 0
    var temp2:Double = 0
    var temp3:Int = 0
    var changenumber:Double = 0
    var temp4:Double = 0
    var control:Int = 0
    var control1:Int = 0
    var control2:Int = 0
    @IBOutlet weak var output: UITextField!
    @IBAction func change(_ sender: UIButton) {
        changenumber = -1 * Double(output.text!)!
        output.text = "\(changenumber)"
    }
    @IBAction func Percent(_ sender: UIButton) {
        temp4 = Double(output.text!)! * 0.01
        output.text = "\(temp4)"
    }
    
    @IBAction func add(_ sender: UIButton) {
        if output.text == ""
        {
            output.text = ""
        }
        else if output.text != "" && Operator == 1
        {
            temp = temp + Double(output.text!)!
            output.text = "\(temp)"
            control = 2
        }
        else if output.text != "" && Operator == 2
        {
            temp = temp - Double(output.text!)!
            control = 2
            Operator = 1
        }
        else if output.text != "" && Operator == 3
        {
            temp = temp * Double(output.text!)!
            Operator = 1
            control = 2
        }
        else if output.text != "" && Operator == 4
        {
            temp = temp / Double(output.text!)!
            Operator = 1
            control = 2
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
            output.text = ""
        }
        else if output.text != "" && Operator == 2
        {
            temp = temp - Double(output.text!)!
            output.text = "\(temp)"
            control = 2
        }
        else if output.text != "" && Operator == 1
        {
            temp = temp + Double(output.text!)!
            control = 2
            Operator = 2
        }
        else if output.text != "" && Operator == 3
        {
            temp = temp * Double(output.text!)!
            Operator = 2
            control = 2
        }
        else if output.text != "" && Operator == 4
        {
            temp = temp / Double(output.text!)!
            Operator = 2
            control = 2
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
            output.text = ""
        }
        else if output.text != "" && Operator == 3
        {
            temp = temp * Double(output.text!)!
            output.text = "\(temp)"
            control = 2
        }
        else if output.text != "" && Operator == 4
        {
            temp = temp / Double(output.text!)!
            control = 2
            Operator = 3
        }
        else if output.text != "" && Operator == 1
        {
            temp3 = Operator
            temp2 = temp
            temp = Double(output.text!)!
            control = 2
            Operator = 3
        }
        else if output.text != "" && Operator == 2
        {
            temp3 = Operator
            temp2 = temp
            temp = Double(output.text!)!
            control = 2
            Operator = 3
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
            output.text = ""
        }
        else if output.text != "" && Operator == 4
        {
            temp = temp / Double(output.text!)!
            output.text = "\(temp)"
            control = 2
        }
        else if output.text != "" && Operator == 3
        {
            temp = temp * Double(output.text!)!
            control = 2
            Operator = 4
        }
        else if output.text != "" && Operator == 1
        {
            temp3 = Operator
            temp2 = temp
            temp = Double(output.text!)!
            control = 2
            Operator = 4
        }
        else if output.text != "" && Operator == 2
        {
            temp3 = Operator
            temp2 = temp
            temp = Double(output.text!)!
            control = 2
            Operator = 4
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
        output.text = "0"
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
            if(temp3 == 1)
            {
                temp = temp * Double(output.text!)! + temp2
                output.text = "\(temp)"
            }
            else if(temp3 == 2)
            {
                temp = temp2 - temp * Double(output.text!)!
                output.text = "\(temp)"
            }
            else
            {
                temp = temp * Double(output.text!)!
                output.text = "\(temp)"
            }
            temp2 = 0
            temp3 = 0
        }
        if Operator == 4
        {
            if(temp3 == 1)
            {
                temp = temp / Double(output.text!)! + temp2
                output.text = "\(temp)"
            }
            else if(temp3 == 2)
            {
                temp = temp2 - temp / Double(output.text!)!
                output.text = "\(temp)"
            }
            else
            {
                temp = temp / Double(output.text!)!
                output.text = "\(temp)"
            }
            temp2 = 0
            temp3 = 0
        }
        temp1 = 0
        control1 = 1
        Operator = 0
    }
    @IBAction func button(_ sender: UIButton){
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "1"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "1"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "1"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "1"
            control = 0
        }
        else if output.text == "0" 
        {
            output.text = ""
            output.text = output.text! + "1"
        }
        else if control == 1
        {
            output.text = output.text! + "1"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "1"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "1"
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "2"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "2"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "2"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "2"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "2"
        }
        else if control == 1
        {
            output.text = output.text! + "2"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "2"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "2"
        }
    }
    @IBAction func button3(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "3"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "3"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "3"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "3"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "3"
        }
        else if control == 1
        {
            output.text = output.text! + "3"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "3"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "3"
        }

    }
    @IBAction func button4(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "4"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "4"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "4"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "4"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "4"
        }
        else if control == 1
        {
            output.text = output.text! + "4"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "4"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "4"
        }

    }
    @IBAction func button5(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "5"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "5"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "5"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "5"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "5"
        }
        else if control == 1
        {
            output.text = output.text! + "5"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "5"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "5"
        }

    }
    @IBAction func button6(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "6"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "6"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "6"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "6"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "6"
        }
        else if control == 1
        {
            output.text = output.text! + "6"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "6"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "6"
        }

    }
    @IBAction func button7(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "7"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "7"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "7"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "7"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "7"
        }
        else if control == 1
        {
            output.text = output.text! + "7"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "7"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "7"
        }

    }
    @IBAction func button8(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "8"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "8"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "8"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "8"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "8"
        }
        else if control == 1
        {
            output.text = output.text! + "8"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "8"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "8"
        }

    }
    @IBAction func button9(_ sender: Any) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "9"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "9"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "9"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "9"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "9"
        }
        else if control == 1
        {
            output.text = output.text! + "9"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "9"
            control1 = 0
        }
        else
        {
            output.text = output.text! + "9"
        }

    }
    @IBAction func button0(_ sender: UIButton) {
        if Operator == 1 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "0"
            control = 0
        }
        else if Operator == 2 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "0"
            control = 0
        }
        else if Operator == 3 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "0"
            control = 0
        }
        else if Operator == 4 && control != 1 && control != 0
        {
            output.text = ""
            output.text = output.text! + "0"
            control = 0
        }
        else if output.text == "0"
        {
            output.text = ""
            output.text = output.text! + "0"
        }
        else if control == 1
        {
            output.text = output.text! + "0"
            control = 0
        }
        else if control1 == 1
        {
            output.text = ""
            output.text = output.text! + "0"
            control1 = 0
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

