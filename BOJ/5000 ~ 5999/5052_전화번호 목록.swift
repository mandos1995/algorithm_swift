class Node {
    var child: [Character: Node] = [:]
    var isEnd: Bool = false
}

class Trie {
    var root = Node()
    func insert(_ str: String) -> Bool {
        var node = root
        for s in str {
            if let child = node.child[s] {
                if child.isEnd {
                    return false
                }
                node = child
            } else {
                let newNode = Node()
                node.child[s] = newNode
                node = newNode
            }
        }
        node.isEnd = true
        return true
    }
}

func solution() {
    let n = Int(readLine()!)!
    let trie = Trie()
    var words: [String] = []
    for _ in 0..<n {
        words.append(readLine()!)
    }
    words.sort()
    var isPrefix = false
    for w in words {
        if !trie.insert(w) {
            isPrefix = true
            break
        }
    }
    print(!isPrefix ? "YES" : "NO")
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
