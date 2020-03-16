//
//  TestLinearMap.swift
//  SpaceKitTests
//
//  Created by Yuhuan Jiang on 3/16/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

import XCTest

import SpaceKit


class TestLinearMap: XCTestCase {

    func testComposingLinearMaps() {
        let p1 = Polynomial(coefficients: [2, 3, 4, 5, 6 ])
        
        let p2 = DifferentiationLinearMap().apply(on: p1)
        let p3 = DifferentiationLinearMap().apply(on: p2)
        
        let p4 = DifferentiationLinearMap().then(DifferentiationLinearMap()).apply(on: p1)
        
        XCTAssertEqual(p3, p4)
    }

}
