import Foundation

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let b = input[0], n = input[1]
    if b == 0 && n == 0 {
        break
    } else {
        var i = 1
        while Int(pow(Double(i),Double(n))) < b {
            i += 1
        }
        Int(pow(Double(i),Double(n))) - b < b - Int(pow(Double(i - 1),Double(n))) ? print(i) : print(i - 1)
    }
}
