while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [0, 0, 0] {
        break
    }
    let n = input[0], k = input[1], m = input[2]
    
    var array = [Int](repeating: 0, count: n)
    for i in 1...n {
        array[i - 1] = i
    }
    array.remove(at: m - 1)
    
    var lastIdx = m - 1
    var maxIdx = n - 1
    
    while maxIdx != 1 {
        lastIdx += k - 1
        
        while lastIdx >= maxIdx {
            lastIdx -= maxIdx
        }
        array.remove(at: lastIdx)
        maxIdx -= 1
    }
    print(array[0])
}
