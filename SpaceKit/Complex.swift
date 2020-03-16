//
//  Complex.swift
//  SpaceKit
//
//  Created by Yuhuan Jiang on 3/15/20.
//  Copyright © 2020 Yuhuan Jiang. All rights reserved.
//

struct Complex: Equatable {
    let real: Real
    let imaginary: Real
}

extension Complex: Field {
    
    static var zero: Complex {
        Complex(real: 0.0, imaginary: 0.0)
    }
    
    static var one: Complex {
        Complex(real: 1.0, imaginary: 0.0)
    }
    
    var reciprocal: Complex {
        let square = self.real * self.real + self.imaginary * self.imaginary
        return Complex(real: self.real / square, imaginary: -self.imaginary / square)        
    }
    
    static func * (a: Complex, b: Complex) -> Complex {
        Complex(
            real: a.real * b.real - a.imaginary * b.imaginary,
            imaginary: a.real * b.imaginary + a.imaginary * b.real
        )
    }
    
    static func + (a: Complex, b: Complex) -> Complex {
        Complex(real: a.real + b.real, imaginary: a.imaginary + b.imaginary)
    }
    
    static prefix func - (x: Complex) -> Complex {
        Complex(real: -x.real, imaginary: -x.imaginary)
    }

}
