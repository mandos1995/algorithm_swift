import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let p1 = input[0]
let s1 = input[1]
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let s2 = input2[0]
let p2 = input2[1]

if p1 + p2 > s1 + s2 {
    print("Persepolis")
} else if p1 + p2 < s1 + s2 {
    print("Esteghlal")
} else {
    if s1 > p2 {
        print("Esteghlal")
    } else if s1 < p2 {
        print("Persepolis")
    } else {
        print("Penalty")
    }
}
