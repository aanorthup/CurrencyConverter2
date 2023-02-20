//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by user231925 on 2/19/23.
//

import Foundation


struct ConverterLogic {
    
    var yen : Bool = true
    var pound : Bool = true
    var euro : Bool = true
    var cad : Bool = true

    let yenRate : Double = 134.25
    let poundRate : Double = 0.83
    let euroRate: Double  = 0.93
    let cadRate : Double = 1.35
    
    var yenAmt = ""
    var poundAmt = ""
    var euroAmt = ""
    var cadAmt = ""
    
   
    
    mutating func yenCheck(_ yenValue: Bool) {
        if yenValue {
            yen = true
        } else {
            yen = false
        }
    }
  
    
    mutating func poundCheck(_ poundValue: Bool) {
        if poundValue {
            pound = true
     } else {
            pound = false
        }
     
    }
    
    mutating func euroCheck(_ euroValue: Bool) {
        if euroValue {
            euro = true
        } else {
            euro = false
        }
    }
    
    
    mutating func cadCheck(_ cadValue: Bool) {
        if cadValue {
            cad = true
        } else {
            cad = false
        }
    }
    
    
    mutating func convertYen(_ usdInput : String) -> String {
        if yen {
            let yenNum = Double(usdInput)! * yenRate
            yenAmt = String(format: "%.2f", yenNum)
            return yenAmt
        } else {
            yenAmt = "No"
            return yenAmt
        }
       
    }
    
    mutating func convertPound(_ usdInput : String) -> String {
        if pound {
            let poundNum = Double(usdInput)! * poundRate
            poundAmt = String(format: "%.2f", poundNum)
            return poundAmt
        } else {
            poundAmt = "No"
            return poundAmt
        }
    }
    
    mutating func convertEuro(_ usdInput: String) -> String {
        if euro {
            let euroNum = Double(usdInput)! * euroRate
            euroAmt = String(format: "%.2f", euroNum)
            return euroAmt
        } else {
            euroAmt = "No"
            return euroAmt
        }

    }
    
    mutating func convertCad(_ usdInput: String) -> String {
        if cad {
            let cadNum = Double(usdInput)! * cadRate
            cadAmt = String(format: "%.2f", cadNum)
            return cadAmt
        } else {
            cadAmt = "No"
            return cadAmt
        }
    }
    
    
    
    
    
    
}
