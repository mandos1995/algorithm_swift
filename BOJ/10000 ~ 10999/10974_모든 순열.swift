func permutation<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    var visited = [Bool](repeating: false, count: elements.count)
    
    func permut(_ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        
        for i in 0..<elements.count {
            if visited[i] == true { continue }
            visited[i] = true
            permut(now + [elements[i]])
            visited[i] = false
        }
    }
    permut([])
    return result
}

let n = Int(readLine()!)!
var array = [Int](repeating: 0, count: n)
for i in 0..<n {
    array[i] = i + 1
}
for arr in permutation(array, n) {
    for a in arr {
        print(a, terminator: " ")
    }
    print()
}
