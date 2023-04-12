while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [0] {
    let n = input[0]
    let histogram = Array(input[1...])
    var stack: [Int] = []
    var answer = 0
    for i in 0..<n {
        while !stack.isEmpty && histogram[stack.last!] >= histogram[i] {
            let top = stack.removeLast()
            let height = histogram[top]
            let width = stack.isEmpty ? i : i - 1 - stack.last!
            answer = max(answer, height * width)
        }
        stack.append(i)
    }
    while !stack.isEmpty {
        let top = stack.removeLast()
        let height = histogram[top]
        let width = stack.isEmpty ? n : n - 1 - stack.last!
        answer = max(answer, height * width)
    }
    print(answer)
}
