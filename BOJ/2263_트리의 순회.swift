let n = Int(readLine()!)!
let inorder = readLine()!.split(separator: " ").map { Int($0)! }
let postorder = readLine()!.split(separator: " ").map { Int($0)! }

func preorder(s1: Int, e1: Int, s2: Int, e2: Int) {
    if s1 > e1 || s2 > e2 {
        return
    }
    let root = postorder[e2]
    let inorderRootIndex = inorder.firstIndex(of: root)!
    let leftSize = inorderRootIndex - s1
    print(root, terminator: " ")
    
    preorder(s1: s1, e1: inorderRootIndex - 1, s2: s2, e2: s2 + leftSize - 1)
    preorder(s1: inorderRootIndex + 1, e1: e1, s2: s2 + leftSize, e2: e2 - 1)
}

preorder(s1: 0, e1: n - 1, s2: 0, e2: n - 1)
