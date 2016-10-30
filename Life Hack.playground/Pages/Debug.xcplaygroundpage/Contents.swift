//: [Previous](@previous)

import Foundation

public func runningTime(of exc: () -> () ) -> Double {
    let startTime = Date()
    exc()
    return Date().timeIntervalSince(startTime)
}

public func averageRunningTime(precision: Int = 1000, command: () -> ()) -> Double {
    var sum = 0.0
    (0..<precision).forEach { _ in sum += runningTime(of: command) }
    return sum / Double(precision)
}

//: [Next](@next)
