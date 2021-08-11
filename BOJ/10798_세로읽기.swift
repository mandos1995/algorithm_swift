var array: [[String]] = [[String]](repeating: [String](repeating: "", count: 15), count: 5)

for i in 0..<5 {
    let string = readLine()!
    var j = 0
    for k in string {
        array[i][j] = String(k)
        j += 1
    }
}
for i in 0..<15 {
    for j in 0..<5 {
        print(array[j][i],terminator: "")
    }
}
