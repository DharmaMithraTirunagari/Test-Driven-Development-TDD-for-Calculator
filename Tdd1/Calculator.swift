//
//  Calculator.swift
//  Tdd1
//
//  Created by Srikanth Kyatham on 11/22/24.
//


struct Calculator {
    func sum(_ a: Int?, _ b: Int?) -> Int {
        guard let a, let b else { return 0 }
        return a + b
    }
    func subtract(_ a: Int?, _ b: Int?) -> Int {
        guard let a, let b else { return 0 }
        return a - b
    }
    func multiply(_ a : Int?, _ b: Int?) -> Int {
        guard let a, let b else { return 0 }
        if a == 0 || b == 0 { return 0 }
        return a * b
    }
    func divide(_ a: Int?, _ b: Int?) -> Int {
        guard let a, let b else { return 0 }
        if b == 0 { return 0 }
        return a / b
    }
}
