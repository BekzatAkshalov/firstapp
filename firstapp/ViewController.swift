//
//  ViewController.swift
//  firstapp
//
//  Created by Bekzat on 16/9/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
   @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touched(_ sender: Any) {
       // label.text = textfield.text //переменная textfield
        let a = textfield1.text!
        
        let b = textfield2.text!
        
       // let sum = (Int(a) ?? 0)   + (Int(b) ?? 0)   // оператор ?? подставляет вместо nil (пустоту)   0,  можно подставить любую цифру
        
        if let numberA = Int(a), let numberB = Int(b) {
            let sum = numberA + numberB
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
        
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textfield1.text!
        
        let b = textfield2.text!
        
       // let sum = (Int(a) ?? 0)   + (Int(b) ?? 0)   // оператор ?? подставляет вместо nil (пустоту)   0,  можно подставить любую цифру
        
        guard let numberA = Int(a), let numberB = Int(b) else {
           label.text = "Введите 2 числа"
            
            return
        }
        
        let sum = numberA - numberB
    
        label.text = String(sum)
    }
    
    @IBAction func divide(_ sender: Any) {
        let a = textfield1.text!
        
        let b = textfield2.text!
        
       // let sum = (Int(a) ?? 0)   + (Int(b) ?? 0)   // оператор ?? подставляет вместо nil (пустоту)   0,  можно подставить любую цифру
        
        guard let numberA = Int(a), let numberB = Int(b) else {
           label.text = "Введите 2 числа"
            
            return
        }
        
        let sum = numberA / numberB
    
        label.text = String(sum)
    }
    @IBAction func multiple(_ sender: Any) {
        let a = textfield1.text!
        
        let b = textfield2.text!
        
       // let sum = (Int(a) ?? 0)   + (Int(b) ?? 0)   // оператор ?? подставляет вместо nil (пустоту)   0,  можно подставить любую цифру
        
        guard let numberA = Int(a), let numberB = Int(b) else {
           label.text = "Введите 2 числа"
            
            return
        }
        
        let sum = numberA * numberB
    
        label.text = String(sum)
    }
    
}


