import Foundation
while let input = readLine() {
    let hotDog = input.split(separator: " ").map { Double($0)! }
    let result = round(hotDog[0] / hotDog[1] * 100) / 100
    print(String(format: "%.2f", result))
}
