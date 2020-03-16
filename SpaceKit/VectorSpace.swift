//
//  VectorSpace.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//


/// A collection of vectors that can be added or scaled by scalars.
protocol VectorSpace {
    
    /// The type of the field that the vector space is over (i.e., the scalar type).
    associatedtype F: Field
 
    /// The additive identity of the vector space.
    static var zero: Self { get }
    
    /// The multiplicative identity of the vector space.
    static var one: F { get }
    
    /// Computes the additive inverse of the specified vector.
    static prefix func - (vector: Self) -> Self
    
    /// Computes the addition of vectors in the vector space.
    /// - Parameters:
    ///   - vector1: A vector in the vector space.
    ///   - vector2: A vector in the vector space.
    static func + (vector1: Self, vector2: Self) -> Self
    
    /// Computes the scalar multiplication of a vector and a scalar.
    /// - Parameter scalar: The scalar to be multiplied on the vector.
    func scale(by scalar: F) -> Self
    
}

extension VectorSpace {
    static func - (a: Self, b: Self) -> Self {
        a + (-b)
    }
}
