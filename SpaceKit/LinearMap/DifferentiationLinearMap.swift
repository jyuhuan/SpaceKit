//
//  DifferentiationLinearMap.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/16/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

class DifferentiationLinearMap<F: Field & Equatable>: Endomorphism<Polynomial<F>> {
    init() {
        super.init { $0.derivative }
    }
}
