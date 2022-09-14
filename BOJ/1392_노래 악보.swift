let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], q = input[1]
var b: [Int] = []

for _ in 0..<n {
    b.append(Int(readLine()!)!)
}

for _ in 0..<q {
    let time = Int(readLine()!)!
    for i in 0..<n {
        if time < b[0...i].reduce(0, +) {
            print(i + 1)
            break
        }
    }
}
