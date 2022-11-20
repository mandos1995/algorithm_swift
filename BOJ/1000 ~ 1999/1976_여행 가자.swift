let n = Int(readLine()!)!
let m = Int(readLine()!)!
var parent = [Int](repeating: 0, count: n + 1)
for i in 1...n {
    parent[i] = i
}

func find(x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    parent[x] = find(x: parent[x])
    return parent[x]
}

func union(a: Int, b: Int) {
    let a = find(x: a)
    let b = find(x: b)
    
    if a != b {
        if a > b {
            parent[a] = b
        } else {
            parent[b] = a
        }
    }
}

func isSameParent(a: Int, b: Int) -> Bool {
    let a = find(x: a)
    let b = find(x: b)
    
    return a == b
}

for i in 1...n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 1...n {
        if input[j - 1] == 1 {
            union(a: i, b: j)
        }
    }
}

let isSame = readLine()!.split(separator: " ").map { Int($0)! }
var isSuccess = true
for i in isSame {
    if !isSameParent(a: isSame[0], b: i) {
        isSuccess = false
        break
    }
}

isSuccess == true ? print("YES") : print("NO")
