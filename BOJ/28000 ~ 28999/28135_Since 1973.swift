import Foundation

let n = Int(readLine()!)!
var count = 0

for i in 0..<n {
    count += i.contains50() ? 2 : 1
}

print(count)

extension Int {
    func contains50() -> Bool {
        var i = self
        
        while i != 0 {
            if i % 10 == 0 && i / 10 % 10 == 5 {
                return true
            }
            i /= 10
        }
        return false
    }
}
