//
//  Field.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//


/// A set that has addition, subtraction, multiplication and division defined.
protocol Field {
    
    /// The additive identity of the field.
    static var zero: Self { get }
    
    /// The multiplicative identity of the field.
    static var one: Self { get }

    /// The multiplicative inverse of the field.
    var reciprocal: Self { get }

    /// Computes the additive inverse of the field.
    static prefix func - (x: Self) -> Self

    /// Computes the addition of two elements.
    static func + (lhs: Self, rhs: Self) -> Self
    
    /// Computes the multiplication of two elements.
    static func * (lhs: Self, rhs: Self) -> Self
    
}

extension Field {
    
    static func * (x: Self, multiples: Int) -> Self {
        var result = Self.zero
        var multiplesLeft = multiples
        while multiplesLeft > 0 {
            result = result + x
            multiplesLeft -= 1
        }
        return result
    }
    
    static func ^ (x: Self, power: Int) -> Self {
        var result = Self.one
        var powerLeft = power
        while powerLeft > 0 {
            result = result * x
            powerLeft -= 1
        }
        return result
    }
    
    static func - (lhs: Self, rhs: Self) -> Self {
        lhs + (-rhs)
    }
    
    static func / (lhs: Self, rhs: Self) -> Self {
        lhs * rhs.reciprocal
    }
    
}

