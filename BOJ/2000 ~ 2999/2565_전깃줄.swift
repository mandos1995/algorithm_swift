let n = Int(readLine()!)!
var connect: [(Int, Int)] = []
var cache = [Int](repeating: 1, count: n)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    connect.append((a, b))
}

connect = connect.sorted { $0.0 < $1.0 }

let array = connect.map { $0.1 }

for i in 1..<n {
    for j in 0...i {
        if array[i] > array[j] {
            cache[i] = max(cache[i], cache[j] + 1)
        }
    }
}

print(n - cache.max()!)
