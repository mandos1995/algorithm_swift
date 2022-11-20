import Foundation

extension Int {
    var numberFormatter: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value: self))!
    }
}

let n = Int(readLine()!)!
print(n.numberFormatter)
