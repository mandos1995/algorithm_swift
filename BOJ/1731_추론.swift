let n = Int(readLine()!)!
var array: [Int] = []
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

if array[1] - array[0] == array[2] - array[1] {
    print(array.last! + (array[1] - array[0]))
} else {
    print(array.last! * (array[1] / array[0]))
}
