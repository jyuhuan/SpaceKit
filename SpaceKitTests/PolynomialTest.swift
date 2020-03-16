//
//  PolynomialTest.swift
//  SpaceKitTests
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

import XCTest

import SpaceKit


class PolynomialTest: XCTestCase {
    
    func testDegreeCalculation() {
        XCTAssertEqual(Polynomial<Real>.zero.degree, Int.min)
        XCTAssertEqual(Polynomial(coefficients: [0, 0]).degree, Int.min)
        XCTAssertEqual(Polynomial(coefficients: [1, 2, 3, 4]).degree, 3)
        XCTAssertEqual(Polynomial(coefficients: [1, 0, 3, 4]).degree, 3)
        XCTAssertEqual(Polynomial(coefficients: [1, 2, 3, 0]).degree, 2)
        XCTAssertEqual(Polynomial(coefficients: [1, 0, 3, 0]).degree, 2)
        XCTAssertEqual(Polynomial(coefficients: [1]).degree, 0)
    }
    
    func testCoefficientAccessing() {
        let p = Polynomial(coefficients: [1, 0, 2, 4])
        XCTAssertEqual(p.coefficient(atDegree: 0), 1)
    }
    
    func testEvaluation() {
        XCTAssertEqual(
            Polynomial(coefficients: [5, 6, 7, 8]).value(for: 2),
            Real(5 + 6 * 2 + 7 * 2 * 2 + 8 * 2 * 2 * 2)
        )
    }
    
    func testDescription() {
        
        XCTAssertEqual(
            Polynomial<Real>.zero.description,
            "p(v) = 0.0"
        )
        
        XCTAssertEqual(
            Polynomial(coefficients: [1]).description,
            "p(v) = 1.0"
        )

        XCTAssertEqual(
            Polynomial(coefficients: [1, 2, 3]).description,
            "p(v) = 1.0 + 2.0 * v^1 + 3.0 * v^2"
        )
        
        XCTAssertEqual(
            Polynomial(coefficients: [1, 2, 0, 3]).description,
            "p(v) = 1.0 + 2.0 * v^1 + 0.0 * v^2 + 3.0 * v^3"
        )
        
    }
    
    func testEquality() {
        
        XCTAssertEqual(
            Polynomial<Real>.zero,
            Polynomial<Real>.zero
        )

        XCTAssertEqual(
            Polynomial<Real>.zero,
            Polynomial(coefficients: [0])
        )

        XCTAssertEqual(
            Polynomial<Real>.zero,
            Polynomial(coefficients: [0, 0])
        )
        
        XCTAssertEqual(
            Polynomial(coefficients: [1]),
            Polynomial(coefficients: [1])
        )
        
    }

    func testInequality() {
        
        XCTAssertNotEqual(
            Polynomial<Real>.zero,
            Polynomial(coefficients: [1])
        )
        
        XCTAssertNotEqual(
            Polynomial(coefficients: [1]),
            Polynomial(coefficients: [2])
        )
        
        XCTAssertNotEqual(
            Polynomial(coefficients: [1]),
            Polynomial(coefficients: [1, 2])
        )
        
    }

}
