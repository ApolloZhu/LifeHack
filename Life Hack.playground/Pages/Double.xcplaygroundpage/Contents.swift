//: [Previous](@previous)

import Foundation

// Due to rounding errors, sin/cos/tan are not working correctly by themselves. This is how I solve it
extension Double {
    public mutating func roundDecimal(to count: Int) {
        self = rounded(keepingDecimalOf: count)
    }
    public func rounded(keepingDecimalOf count: Int) -> Double {
        return Double(String(format: "%.\(count)f", self))!
    }
}
//: [Next](@next)
