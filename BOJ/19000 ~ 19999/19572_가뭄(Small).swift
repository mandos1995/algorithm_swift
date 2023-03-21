import Foundation

let d = readLine()!.split(separator: " ").map { Double($0)! }

let a = (d[0] + d[1] - d[2]) / 2
let b = d[0] - a
let c = d[2] - b

let isSuccess = a > 0 && b > 0 && c > 0

if isSuccess {
    print(1)
    print(String(format: "%.1f %.1f %.1f", a, b, c))
} else {
    print(-1)
}
