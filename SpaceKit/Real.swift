//
//  Real.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

typealias Real = Double

extension Real: Field {

    static var zero: Real { 0.0 }
    
    static var one: Real { 1.0 }
    
    var reciprocal: Real {1.0 / self }
    
}
