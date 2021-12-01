import Foundation

func squared(num: Int) -> Int {
    return num * num
}

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let distance = input[1] - input[0]
    let num = Int(floor(sqrt(Double(distance))))
    let numSquared = squared(num: num)
    
    if distance == numSquared {
        print(num * 2 - 1)
    } else if numSquared < distance && distance <= numSquared + num {
        print(num * 2)
    } else if numSquared + num < distance {
        print(num * 2 + 1)
    } else if distance < 4 {
        print(distance)
    }
}
