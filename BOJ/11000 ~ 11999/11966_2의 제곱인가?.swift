import Foundation
var powTwo: [Double] = []
for i in 0...30 {
    powTwo.append(pow(2.0, Double(i)))
}
let input = Double(readLine()!)!
if powTwo.contains(input) {
    print(1)
} else {
    print(0)
}
