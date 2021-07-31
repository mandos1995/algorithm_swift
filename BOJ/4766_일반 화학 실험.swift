import Foundation
var first = Double(readLine()!)!
while true {
    let input = Double(readLine()!)!
    if input == 999 {
        break
    }
    print(String(format: "%.2f", input - first))
    first = input
}
