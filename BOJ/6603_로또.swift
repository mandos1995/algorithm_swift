while true {
    let nums = readLine()!.split(separator: " ").dropFirst().map { Int($0)! }
    if nums.isEmpty {
        break
    }
    var history: [Int] = []
    func backtracking(previousIdx: Int, depth: Int) {
        if depth == 6 {
            for h in history {
                print(h, terminator: " ")
            }
            print()
            return
        }
        
        for nextIdx in previousIdx + 1..<nums.count {
            history.append(nums[nextIdx])
            backtracking(previousIdx: nextIdx, depth: depth + 1)
            history.removeLast()
        }
    }
    backtracking(previousIdx: -1, depth: 0)
    print()
}
