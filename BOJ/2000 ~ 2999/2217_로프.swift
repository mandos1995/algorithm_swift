let n = Int(readLine()!)!
var rope = [Int]()
for _ in 0..<n {
    rope.append(Int(readLine()!)!)
}
rope.sort(by: >)
var max = rope[0]
var weight = 0
for i in 0..<n {
    weight = rope[i] * (i + 1)
    if max < weight {
        max = weight
    }
}
print(max)
