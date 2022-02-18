let n = Int(readLine()!)!
var line: [Int] = [0]
var i = 1
var sum = 0
while sum < 10_000_000 {
    sum += i
    i += 1
    line.append(sum)
}
var index = 0

for i in 0..<line.count {
    if line[i] >= n {
        index = i
        break
    }
}
var top = 0
var bottom = 0
if index % 2 == 0 {
    top = n - line[index - 1]
    bottom = index + 1 - top
} else {
    bottom = n - line[index - 1]
    top = index + 1 - bottom
}
print("\(top)/\(bottom)")
