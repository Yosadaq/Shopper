//
//  ShopperTests.swift
//  ShopperTests
//
//  Created by Yosadaq Esparza on 1/30/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import XCTest

class ShopperTests: XCTestCase {
    func testGetHours() {
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
        
    }
}
