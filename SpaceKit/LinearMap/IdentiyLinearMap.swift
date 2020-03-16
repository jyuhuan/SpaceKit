//
//  IdentiyLinearMap.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/16/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

class IdentityLinearMap<V: VectorSpace>: Endomorphism<V> {
    
    init() {
        super.init { $0 }
    }
    
}
