let t = Int(readLine()!)!
let scores = readLine()!.split(separator: " ").map { Int($0)! } + [Int](repeating: 0, count: 5 - t)
print(scores)
let k = scores[0], m = scores[1], e = scores[2], c = scores[3], o = scores[4]
var answer = o * 707
answer += abs(k - e) * (k > e ? 508 : 108)
answer += abs(m - c) * (m > c ? 212 : 305)
print(answer * 4763)
