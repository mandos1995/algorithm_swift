let n = Int(readLine()!)!
var x: [Int] = []
var y: [Int] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    x.append(input[0])
    y.append(input[1])
}
print(((x.max()! - x.min()!) + (y.max()! - y.min()!)) * 2)
