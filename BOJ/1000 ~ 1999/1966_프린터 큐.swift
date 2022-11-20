for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    var queue = readLine()!.split(separator: " ").map { Int($0)! }
    var index = [Int](repeating: 0, count: n)
    index[m] = Int.max
    var count = 0
    
    while !queue.isEmpty {
        if queue[0] == queue.max()! {
            count += 1
            if index[0] == Int.max {
                print(count)
                break
            } else {
                queue.removeFirst()
                index.removeFirst()
            }
        } else {
            queue.append(queue.removeFirst())
            index.append(index.removeFirst())
        }
    }
    
}
