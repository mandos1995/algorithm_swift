let n = Int(readLine()!)!
var dict: [Int: Int] = [:]
var length: [(Int, Int)] = []
for _ in 0..<6 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let c = input[0], len = input[1]
    dict[c] = dict[c] == nil ? 1 : dict[c]! + 1
    length.append((c, len))
}

var total = 1
var minus = 1
for i in 0..<6 {
    if dict[length[i].0] == 1 {
        total *= length[i].1
        continue
    }
    
    if length[i].0 == length[(i + 2) % 6].0 {
        minus *= length[(i + 1) % 6].1
    }
}

print((total - minus) * n)
