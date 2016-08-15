//
//  File.swift
//  Calculator
//
//  Created by SongYu on 16/8/14.
//  Copyright © 2016年 SongYu. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    private var accumulator = 0.0 //0.0使swift推断出accumulator为double型，若为0，则推断为int型
    func setOperand(operand: Double){
        accumulator = operand
    }
    
    var operations: Dictionary<String,Operation> = [
    "π" : Operation.Constant(M_PI),  //M_PI
    "e" : Operation.Constant(M_E),  //M_E
    "√" : Operation.Constant,  //sqrt
    "cos" : Operation.Constant //cos
    ]
    
    enum Operation {
        case Constant
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    
    
    func performOperation(symbol: String){
        if let operation = operations[symbol] {
            switch operation {
            case .Constant:break
            case .UnaryOperation:break
            case .BinaryOperation:break
            case .Equals:break
            }
            
        }
    }
    
    var result: Double {
        get{
            return accumulator
        }
    }
}