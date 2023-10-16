var cubes: [Int] = []
var i = 1
while true {
    let n = i * i * i
    cubes.append(n)
    i += 1
    if n > 2_000_000_000 { break }
}

let t = Int(readLine()!)!
for i in 1...t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    print("Case #\(i): \(cubes.filter { (a...b) ~= $0 }.count)")
}
