//
//  Endomorphism.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/16/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

class Endomorphism<V: VectorSpace>: LinearMap {
    
    typealias V = V
    typealias W = V
    
    private let _apply: (V) -> V
    
    init(_ apply: @escaping (V) -> V) {
        self._apply = apply
    }
    
    func apply(on v: V) -> V {
        _apply(v)
    }

}
