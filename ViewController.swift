//
//  ViewController.swift
//  Calculator
//
//  Created by SongYu on 16/8/13.
//  Copyright © 2016年 SongYu. All rights reserved.
//

//1. 简单计算器界面 + π
//2. 简单swift语法
//3. optional的作用
//4. 字符串连接
//5. 解包的含义


import UIKit

class ViewController: UIViewController {
//optional是数据类型,表示对象是否被赋值
    
    
    @IBOutlet private weak var display: UILabel!//这里的感叹号implicit unwarp(隐式解包)了所有对象
    
    private var userIsInTheMiddleOfTyping = false
    
    @IBAction private func touchDigit(sender: UIButton){
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit//通过 + 连接字符串
        }else{
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
        
       
    }

    
    private var displayValue:Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)//关键字newValue
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction func performOperation(sender: UIButton) {
        if userIsInTheMiddleOfTyping{
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
       
        if let  mathmaticalSymbol = sender.currentTitle{
            brain.performOperation(mathmaticalSymbol)
        }
        displayValue = brain.result

    }

}