//
//  ConverterView.swift
//  CurrencyConverter
//
//  Created by user231925 on 2/19/23.
//

import UIKit

class ConverterView: UIViewController {
    
    var yen = ""
    var pound = ""
    var euro = ""
    var cad = ""
    var usdReturn = ""
    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var cadLabel: UILabel!
    
    
    @IBOutlet weak var jpya: UILabel!
    @IBOutlet weak var eura: UILabel!
    @IBOutlet weak var gbpa: UILabel!
    @IBOutlet weak var cada: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdLabel.text = "Amount in USD: $\(usdReturn)"
        
        if yen != "No" {
            jpya.text = "Ұ\(yen)"
        } else {
            jpya.isHidden = true
            jpyLabel.isHidden = true
        }
        
        if pound != "No" {
            gbpa.text = "£\(pound)"
        } else {
            gbpLabel.isHidden = true
            gbpa.isHidden = true
        }
        
        if euro != "No" {
            eura.text = "€\(euro)"
        } else {
            eura.isHidden = true
            eurLabel.isHidden = true
        }
        
       if cad != "No" {
            cada.text = "$\(cad)"
        } else {
            cada.isHidden = true
            cadLabel.isHidden = true
        }
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
