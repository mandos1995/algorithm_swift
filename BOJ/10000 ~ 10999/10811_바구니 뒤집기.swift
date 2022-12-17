let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var basket = [Int](0...n)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var start = input[0], end = input[1]
    while start < end {
        basket.swapAt(start, end)
        start += 1
        end -= 1
    }
}

basket[1...].forEach { print($0, terminator: " ") }
