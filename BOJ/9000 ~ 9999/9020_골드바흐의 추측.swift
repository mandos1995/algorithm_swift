import Foundation
var array = [Bool](repeating: true, count: 40001)

for i in 2..<Int(sqrt(Double(40000)) + 1) {
    if array[i] {
        var j = 2
        while i * j <= 40000 {
            array[i * j] = false
            j += 1
        }
    }
}

for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    
    for i in (0...n/2).reversed() {
        if array[i] && array[n - i] {
            print(i, n - i)
            break
        }
    }
    
}
