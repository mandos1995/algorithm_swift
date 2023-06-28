func solution() {
    let a = readLine()!.map { Int(String($0))! }
    var targetIndex = -1
    for i in (1..<a.count).reversed() {
        if a[i] > a[i - 1] {
            targetIndex = i - 1
            break
        }
    }
    if targetIndex == -1 {
        print("BIGGEST")
        return
    }
    let front = a[..<targetIndex].map { String($0) }.joined()
    
    var retain = a[targetIndex...]
    let nextNumber = retain.filter { $0 > a[targetIndex] }.sorted(by: <).first!
    let nextNumberIndex = retain.firstIndex(of: nextNumber)!
    retain.remove(at: nextNumberIndex)
    
    let back = "\(nextNumber)" + retain.sorted().map { String($0) }.joined()
    print(front + back)
    
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
