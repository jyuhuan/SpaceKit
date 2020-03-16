//
//  ComplexFieldTest.swift
//  SpaceKitTests
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

import XCTest

import SpaceKit

class ComplexFieldTest: XCTestCase {

    func testThatComplexIsAField() {
        
        XCTAssertEqual(
            Complex.zero,
            Complex(real: 0, imaginary: 0),
            "The additive identity should be (0 + 0i)."
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) + Complex.zero,
            Complex(real: 2, imaginary: 3),
            "The additive identity should have no additive effect."
        )
        
        XCTAssertEqual(
            Complex.one,
            Complex(real: 1, imaginary: 0),
            "The multiplicative identity should be (1 + 0i)."
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) * Complex.one,
            Complex(real: 2, imaginary: 3),
            "The multiplicative identity should have no multiplicative effect."
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) + (-Complex(real: 2, imaginary: 3)),
            Complex.zero,
            "The addition of n and the additive inverse of n, where n ∈ R, should be 0."
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) - Complex(real: 2, imaginary: 3),
            Complex.zero
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) * Complex(real: 2, imaginary: 3).reciprocal,
            Complex.one,
            "The multiplication of n and the reciprocal of n, where n ∈ R, should be 1."
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) / Complex(real: 2, imaginary: 3),
            Complex.one
        )

        XCTAssertEqual(
            -Complex(real: 2, imaginary: 3),
            Complex(real: -2, imaginary: -3),
            "The additive inverse of (2 + 3i) should be (-2 - 3i)."
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) + Complex(real: 3, imaginary: 4),
            Complex(real: 5, imaginary: 7),
            "The addition of (2 + 3i) and (3 + 4i) should be 5 + 7i."
        )
        
        XCTAssertEqual(
            Complex(real: 2, imaginary: 3) * Complex(real: 3, imaginary: 4),
            Complex(real: 2 * 3 - 3 * 4, imaginary: 2 * 4 + 3 * 3),
            "The multiplication of (2 + 3i) and (3 + 4i) should be (-6 + 17i)."
        )

    }

}
