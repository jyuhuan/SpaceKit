//
//  RealFieldTest.swift
//  SpaceKitTests
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

import XCTest

import SpaceKit

class RealFieldTest: XCTestCase {

    func testThatRealIsAField() {
        
        XCTAssertEqual(
            Real.zero,
            0.0,
            "The additive identity should be 0."
        )
        
        XCTAssertEqual(
            2.0 + Real.zero,
            2.0,
            "The additive identity should have no additive effect."
        )
        
        XCTAssertEqual(
            Real.one,
            1.0,
            "The multiplicative identity should be 1."
        )
        
        XCTAssertEqual(
            2.0 * Real.one,
            2.0,
            "The multiplicative identity should have no multiplicative effect."
        )
        
        XCTAssertEqual(
            2.0 + (-2.0),
            Real.zero,
            "The addition of n and the additive inverse of n, where n ∈ R, should be 0."
        )
        
        XCTAssertEqual(
            2.0 * 2.0.reciprocal,
            Real.one,
            "The multiplication of n and the reciprocal of n, where n ∈ R, should be 1."
        )

        XCTAssertEqual(
            -2.0,
            -2.0,
            "The additive inverse of 2 should be -2."
        )
        
        XCTAssertEqual(
            2.0 + 3.0,
            5.0,
            "The addition of 2 and 3 should be 5."
        )
        
        XCTAssertEqual(
            2.0 * 3.0,
            6.0,
            "The multiplication of 2 and 3 should be 6."
        )
        
    }
    
}
