let s = ["-"] + readLine()!.map { String($0) }
let q = Int(readLine()!)!
var dict = [[String: Int]](repeating: [:], count: s.count + 1)
for i in 1..<s.count {
    dict[i] = dict[i - 1]
    dict[i][s[i], default: 0] += 1
}
for _ in 0..<q {
    let input = readLine()!.split(separator: " ")
    let alpha = String(input[0]), l = Int(input[1])! + 1, r = Int(input[2])! + 1
    print(dict[r][alpha, default: 0] - dict[l - 1][alpha, default: 0])
}
