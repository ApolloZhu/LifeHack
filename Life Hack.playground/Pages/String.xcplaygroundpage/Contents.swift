//: [Previous](@previous)

import Foundation

// I don't like String.Index, and I'd like some convenient subscripts.
extension String {
    public subscript (i: Int) -> Character {
        get {
            return self[index(startIndex, offsetBy: i)]
        }
        set {
            let start = index(startIndex, offsetBy: i)
            let end = index(start, offsetBy: 1)
            self = replacingCharacters(in: Range(start..<end), with: String(newValue))
        }
    }

    public subscript (i: Int) -> String {
        return String(self[i] as Character)
    }

    public subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(start, offsetBy: r.upperBound - r.lowerBound)
        return self[Range(start ..< end)]
    }
}

// While trimming characters are great for those are at the edge, I want all of them to be out
extension String {
    public func withoutCharacters(in set: CharacterSet) -> String {
        return unicodeScalars.reduce("") { $0 + (set.contains($1) ? "" : String($1)) }
    }

    public mutating func removeCharacters(in set: CharacterSet) {
        self = withoutCharacters(in: set)
    }
}

// Python has `'i'*3` that evaluates to "iii", and here is my workaround for that
func *(lhs: String, rhs: Decimal) -> String {
    return stride(from: 0, to: rhs, by: 1).reduce(""){ (b, _) in b+lhs }
}
print("i"*pow(10,3))
//: [Next](@next)
