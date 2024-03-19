var array: [Int] = []
var answer = 0
for _ in 0..<8 { array.append(Int(readLine()!)!) }
array += array
for i in 0..<array.count - 4 {
    answer = max(answer, array[i...i + 3].reduce(0, +))
}
print(answer)
