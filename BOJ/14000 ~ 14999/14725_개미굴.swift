class Node {
    var child: [String: Node] = [:]
    var depth: Int
    
    init(depth: Int) {
        self.depth = depth
    }
}

class Trie {
    var root = Node(depth: 0)
    
    func insert(_ str: [String]) {
        var node = root
        for s in str {
            if node.child[s] == nil {
                node.child[s] = Node(depth: node.depth + 1)
            }
            node = node.child[s]!
        }
    }
    
    func search(node: Node) {
        let keys = node.child.keys.sorted(by: <)
        for key in keys {
            let currentNode = node.child[key]!
            print(String(repeating: "--", count: currentNode.depth - 1) + key)
            search(node: currentNode)
        }
    
    }
}

let trie = Trie()
let n = Int(readLine()!)!
for _ in 0..<n {
    let str = readLine()!.split(separator: " ").dropFirst().map { String($0) }
    trie.insert(str)
}
trie.search(node: trie.root)
