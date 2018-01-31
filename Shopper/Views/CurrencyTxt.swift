//
//  CurrencyTxt.swift
//  Shopper
//
//  Created by Yosadaq Esparza on 1/29/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxt: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.7103426396, green: 0.7103426396, blue: 0.7103426396, alpha: 0.2077536387)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
  }
