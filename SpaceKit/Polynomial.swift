//
//  Polynomial.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

/// A function that maps a scalar value *v* to another scalar value using the formula
/// *a*₀ + *a*₁*v* + *a*₂*v*² + ... + *aₙvⁿ*, where *a*ᵢ is the coefficient for the term *v*ⁱ .
struct Polynomial<F: Field & Equatable> {
    
    let coefficients: [F]
    
    func coefficient(atDegree degree: Int) -> F {
        degree < coefficients.count ? coefficients[degree] : .zero
    }
    
    var degree: Int {
        var lastNonZeroIndex: Int = -1
        for (idx, coeff) in coefficients.enumerated() {
            if coeff != .zero {
                lastNonZeroIndex = idx
            }
        }
        return lastNonZeroIndex == -1 ? .min : lastNonZeroIndex
    }
    
    func value(for input: F) -> F {
        coefficients.enumerated()
            .map { (idx, coeff) in coeff * (input ^ idx) }
            .reduce(.zero, +)
    }
    
}

extension Polynomial: VectorSpace {

    // - TODO: Which should be the zero polynomial? [0] or []?
    static var zero: Polynomial<F> {
        Polynomial(coefficients: [.zero])
    }
    
    static var one: F {
        .one
    }
    
    func scale(by scalar: F) -> Polynomial<F> {
        Polynomial(coefficients: self.coefficients.map {$0 * scalar})
    }
        
    static prefix func - (x: Polynomial<F>) -> Polynomial<F> {
        Polynomial(coefficients: x.coefficients.map { -$0 })
    }

    static func + (a: Polynomial<F>, b: Polynomial<F>) -> Polynomial<F> {
        let maxDegree = max(a.degree, b.degree)
        let coefficientSums = (0...maxDegree).map { i in
            a.coefficient(atDegree: i) + b.coefficient(atDegree: i)
        }
        return Polynomial(coefficients: coefficientSums)
    }

}

extension Polynomial: CustomStringConvertible {
    var description: String {
        let terms = coefficients.enumerated().map { (index, coeff) in
            index == 0 ? "\(coeff)" : "\(coeff) * v^\(index)"
        }
        return "p(v) = " + terms.joined(separator: " + ")
    }
}

extension Polynomial: Equatable {
    static func == (lhs: Polynomial<F>, rhs: Polynomial<F>) -> Bool {
        
        if lhs.degree == .min {
            return rhs.degree == .min
        }
        
        let maxDegree = max(lhs.degree, rhs.degree)
        
        for i in 0...maxDegree {
            if lhs.coefficient(atDegree: i) != rhs.coefficient(atDegree: i) {
                return false
            }
        }
        return true
    }
}
