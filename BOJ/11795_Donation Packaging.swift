let n = Int(readLine()!)!
var set = [0, 0, 0]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for i in 0..<3 { set[i] += input[i] }
    if set.min()! >= 30 {
        print(set.min()!)
        set = set.map { $0 - set.min()! }
    }
    else { print("NO") }
}
