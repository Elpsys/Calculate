//
//  ViewController.swift
//  Calculate
//
//  Created by s20171103186 on 2018/10/12.
//  Copyright © 2018年 s20171103186. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    self.image.layer.cornerRadius = avatarImage.frame.width / 2
    self.image.layer.masksToBounds = true
    var temp:Double = 0
    var Operatorflag = 0
    @IBOutlet weak var output: UITextField!
    @IBAction func add(_ sender: UIButton) {

        temp = Double(output.text!)!
        output.text = ""
        Operatorflag = 1
    }
    @IBAction func subtraction(_ sender: UIButton) {
        temp = Double(output.text!)!
        output.text = ""
        Operatorflag = 2
    }
    @IBAction func multip(_ sender: UIButton) {
        temp = Double(output.text!)!
        output.text = ""
        Operatorflag = 3
    }
    @IBAction func division(_ sender: UIButton) {
        temp = Double(output.text!)!
        output.text = ""
        Operatorflag = 4
    }
    @IBAction func clear(_ sender: UIButton) {
        
    }
    @IBAction func equal(_ sender: UIButton) {
        if Operatorflag == 1
        {
            temp = temp + Double(output.text!)!
            output.text = "\(temp)"
        }
        if Operatorflag == 2
        {
            temp = temp - Double(output.text!)!
            output.text = "\(temp)"
        }
        if Operatorflag == 3
        {
            temp = temp * Double(output.text!)!
            output.text = "\(temp)"
        }
        if Operatorflag == 4
        {
            temp = temp / Double(output.text!)!
            output.text = "\(temp)"
        }
    }
    @IBAction func button(_ sender: UIButton){
        output.text = output.text! + "1"
    }
    @IBAction func button2(_ sender: UIButton) {
        output.text = output.text! + "2"
   
    }
    @IBAction func button3(_ sender: UIButton) {
        output.text = output.text! + "3"
        
    }
    @IBAction func button4(_ sender: UIButton) {
        output.text = output.text! + "4"
        
    }
    @IBAction func button5(_ sender: UIButton) {
        output.text = output.text! + "5"
        
    }
    @IBAction func button6(_ sender: UIButton) {
        output.text = output.text! + "6"
        
    }
    @IBAction func button7(_ sender: UIButton) {
        output.text = output.text! + "7"
        
    }
    @IBAction func button8(_ sender: UIButton) {
        output.text = output.text! + "8"
        
    }
    @IBAction func button9(_ sender: Any) {
        output.text = output.text! + "9"
        
    }
    @IBAction func button0(_ sender: UIButton) {
        output.text = output.text! + " 0"
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

