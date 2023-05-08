func solution() {
    let n = Int(readLine()!)!
    var queue = ["1"]
    var index = 0
    
    while queue.count > index {
        let num = Int(queue[index])!
        if num % n == 0 {
            print(num)
            break
        }
        queue.append("\(num)0")
        queue.append("\(num)1")
        index += 1
    }
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
