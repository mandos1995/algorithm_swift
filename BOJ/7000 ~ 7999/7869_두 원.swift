import Foundation

let input = readLine()!.split(separator: " ").map { Double($0)! }
let x1 = input[0], y1 = input[1], r1 = input[2]
let x2 = input[3], y2 = input[4], r2 = input[5]

let d = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))

var answer: Double = 0

if r1 + r2 <= d {
    answer = 0
} else if r1 + r2 > d && abs(r1 - r2) < d {
    let a = acos((pow(d, 2) + pow(r1, 2) - pow(r2, 2)) / (2 * d * r1))
    let b = acos((pow(d, 2) + pow(r2, 2) - pow(r1, 2)) / (2 * d * r2))
    let s1 = (pow(r1, 2) * a) - (pow(r1, 2) * sin(2 * a) / 2)
    let s2 = (pow(r2, 2) * b) - (pow(r2, 2) * sin(2 * b) / 2)
    answer = s1 + s2
    
} else {
    answer = pow(min(r1, r2), 2) * Double.pi
}
print(String(format: "%.3f", answer))
