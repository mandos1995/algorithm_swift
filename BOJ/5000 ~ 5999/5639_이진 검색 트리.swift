var nodes: [Int] = []
while let input = readLine() {
    nodes.append(Int(input)!)
}

func postOrder(start: Int, end: Int) {
    if start > end {
        return
    }
    var index = end + 1
    for i in start...end {
        if nodes[start] < nodes[i] {
            index = i
            break
        }
    }
    
    postOrder(start: start + 1, end: index - 1)
    postOrder(start: index, end: end)
    print(nodes[start])
}

postOrder(start: 0, end: nodes.count - 1)
