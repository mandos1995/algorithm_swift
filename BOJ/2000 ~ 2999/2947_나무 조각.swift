var array = readLine()!.split(separator: " ").map { Int($0)! }

while array != [1, 2, 3, 4, 5] {
    for i in 0..<4 {
        if array[i] > array[i + 1] {
            array.swapAt(i, i + 1)
            array.forEach { print($0, terminator: " ") }
            print()
        }
    }
}
