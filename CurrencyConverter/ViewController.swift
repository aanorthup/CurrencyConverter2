//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user231925 on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var warningMsg: UILabel!
    
    var converter = ConverterLogic()
    
    var yen  = ""
    var pound = ""
    var euro = ""
    var cad = ""
    var usdReturn = ""

    @IBOutlet weak var usd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func jpySwitch(_ sender: UISwitch) {
        converter.yenCheck(sender.isOn)
    }
    
    
    @IBAction func gbpSwitch(_ sender: UISwitch) {
        converter.poundCheck(sender.isOn)
    }
    
    
    @IBAction func eurSwitch(_ sender: UISwitch) {
        converter.euroCheck(sender.isOn)
    }
    
    
    @IBAction func cadSwitch(_ sender: UISwitch) {
        converter.cadCheck(sender.isOn)
    }
    
    
    @IBAction func converterBtn(_ sender: UIButton) {
        let usdAmount = Int(usd.text!)
        
        if usdAmount == nil {
            warningMsg.text = "Please enter an integer!"
        }
        else if usdAmount! < 1 {
            warningMsg.text = "Please enter an amount above 0!"
        } else {
            warningMsg.text = "Currency Converter"
            
            usdReturn = usd.text!
            
            yen = converter.convertYen(usdReturn)
            pound = converter.convertPound(usdReturn)
            euro = converter.convertEuro(usdReturn)
            cad = converter.convertCad(usdReturn)
        
            self.performSegue(withIdentifier: "toConverterView", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConverterView" {
            let navigation = segue.destination as! ConverterView
            navigation.yen = yen
            navigation.pound = pound
            navigation.euro = euro
            navigation.cad = cad
            navigation.usdReturn = usdReturn    }
    }
}

