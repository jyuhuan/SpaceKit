//
//  ZeroLinearMap.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/16/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

class ZeroLinearMap<V: VectorSpace, W: VectorSpace>: LinearMap {
    func apply(on v: V) -> W {
        W.zero
    }
}
