import Foundation
let input = readLine()!.split(separator: " ").map { Double($0)! }
let t = input[0]
let p = input[1]

if p > 20 {
    let result = t / (100 - p)
    print((p - 20) * result + (20 * 2 * result))
} else {
    let result = t / ((20 - p) * 2 + 80)
    print(p * 2 * result)
}
