//
//  Wage.swift
//  Shopper
//
//  Created by Yosadaq Esparza on 1/30/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
        
        }
}
