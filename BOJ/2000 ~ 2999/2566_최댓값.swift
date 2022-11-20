var array = [[Int]]()
var max = 0
var x = 0
var y = 0
for _ in 0..<9 {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 0..<9 {
    for j in 0..<9 {
        if max <= array[i][j] {
            max = array[i][j]
            x = i + 1
            y = j + 1
        }
    }
}
print(max)
print(x, y)
