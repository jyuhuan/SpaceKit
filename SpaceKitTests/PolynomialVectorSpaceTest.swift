//
//  VectorVectorSpaceTest.swift
//  SpaceKitTests
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

import XCTest

import SpaceKit

class PolynomialVectorSpaceTest: XCTestCase {

    func testThatPolynomialsFormsVectorSpace() {
        
        XCTAssertEqual(
            Polynomial.zero + Polynomial(coefficients: [1, 2, 3, 4]),
            Polynomial(coefficients: [1, 2, 3, 4]),
            "Additive identity should have no additive effect."
        )
        
        XCTAssertEqual(
            Polynomial(coefficients: [1, 2, 3, 4]) + (-Polynomial(coefficients: [1, 2, 3, 4])),
            Polynomial.zero,
            "The addition of v and the additive inverse of v, where v ∈ V, should be the 0 vector."
        )
        
        XCTAssertEqual(
            Polynomial(coefficients: [1, 2, 3, 4]) - Polynomial(coefficients: [1, 2, 3, 4]),
            Polynomial.zero
        )
        
        XCTAssertEqual(
            Polynomial(coefficients: [1, 2, 3, 4]).scale(by: Polynomial.one),
            Polynomial(coefficients: [1, 2, 3, 4]),
            "Multiplicative identity should have no scaling effect."
        )
        
    }

}
