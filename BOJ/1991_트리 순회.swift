let n = Int(readLine()!)!
var nodes: [String: (String,String)] = [:]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let node = input[0], left = input[1], right = input[2]
    nodes[node] = (left, right)
}

func preorder(node: String) {
    if node == "." {
        return
    }
    print(node, terminator: "")
    preorder(node: nodes[node]!.0)
    preorder(node: nodes[node]!.1)
}

func inorder(node: String) {
    if node == "." {
        return
    }
    inorder(node: nodes[node]!.0)
    print(node, terminator: "")
    inorder(node: nodes[node]!.1)
}

func postorder(node: String) {
    if node == "." {
        return
    }
    postorder(node: nodes[node]!.0)
    postorder(node: nodes[node]!.1)
    print(node, terminator: "")
    
}

preorder(node: "A")
print()
inorder(node: "A")
print()
postorder(node: "A")
