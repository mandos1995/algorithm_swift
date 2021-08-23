import Foundation
var result = 0.0
var i = 1
while true {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let (a, b, c) = (input[0], input[1], input[2])
    if a == 0 && b == 0 && c == 0 {
        break
    }
    print("Triangle #\(i)")
    if a == -1 {
        if c * c - b * b <= 0 {
            print("Impossible.")
        } else {
            result = sqrt(c * c - b * b)
            print("a = \(String(format: "%.3f", round(result * 1000) / 1000))")
        }
        print()
    } else if input[1] == -1 {
        if c * c - a * a <= 0 {
            print("Impossible.")
        } else {
            result = sqrt(c * c - a * a)
            print("b = \(String(format: "%.3f", round(result * 1000) / 1000))")
        }
        print()
    } else {
        result = sqrt(a * a + b * b)
        print("c = \(String(format: "%.3f", round(result * 1000) / 1000))")
        print()
    }
    i += 1
    
}
