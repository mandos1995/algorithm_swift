let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], c = input[1]

var isBoom = [Bool](repeating: false, count: c + 1)

for _ in 0..<n {
    let time = Int(readLine()!)!
    var i = 1
    while time * i <= c {
        isBoom[time * i] = true
        i += 1
    }
}

print(isBoom.filter { $0 }.count)
