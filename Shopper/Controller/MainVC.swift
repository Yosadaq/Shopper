//
//  ViewController.swift
//  Shopper
//
//  Created by Yosadaq Esparza on 1/29/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var Wagetxt: CurrencyTxt!
    @IBOutlet weak var Pricetxt: CurrencyTxt!
    @IBOutlet weak var ResultLbl: UILabel!
    @IBOutlet weak var HourLbl: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        Wagetxt.inputAccessoryView = calcBtn
        Pricetxt.inputAccessoryView = calcBtn
        
        ResultLbl.isHidden = true
        HourLbl.isHidden = true
    }
    
    @objc func calculate() {
        if let wageTxt = Wagetxt.text, let priceTxt = Pricetxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                ResultLbl.isHidden = false
                HourLbl.isHidden = false
                ResultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }
    
    @IBAction func ClearBtn(_ sender: Any) {
        ResultLbl.isHidden = true
        HourLbl.isHidden = true
        Wagetxt.text = " "
        Pricetxt.text = " "
        
    }

}

