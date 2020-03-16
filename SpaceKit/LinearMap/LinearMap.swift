//
//  LinearMap.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/16/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//


/// A mapping between two vector spaces that preserves addition and scalar multiplication.
protocol LinearMap {
    
    associatedtype V: VectorSpace
    associatedtype W: VectorSpace
    
    func apply(on v: V) -> W
    
}


class ComposedLinearMap<M1: LinearMap, M2: LinearMap>: LinearMap where M1.W == M2.V {

    typealias V = M1.V
    typealias W = M2.W
    
    let m1: M1
    let m2: M2
    
    init(m1: M1, m2: M2) {
        self.m1 = m1
        self.m2 = m2
    }
    
    func apply(on v: M1.V) -> M2.W {
        m2.apply(on: m1.apply(on: v))
    }
    
}

extension LinearMap {
    func then<M: LinearMap>(_ m: M) -> ComposedLinearMap<Self, M> where M.V == Self.W {
        ComposedLinearMap<Self, M>(m1: self, m2: m)
    }
}
