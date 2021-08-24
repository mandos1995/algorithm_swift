let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var result = 0
    for _ in 0..<input[0] {
        let ufo = readLine()!.split(separator: " ").map { Double($0)! }
        let (v, f, c) = (ufo[0], ufo[1], ufo[2])
        if f / c * v >= Double(input[1]) {
            result += 1
        }
    }
    print(result)
}
