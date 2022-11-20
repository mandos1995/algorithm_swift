let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var m = input[1]
let nums = readLine()!.split(separator: " ").dropFirst().map { Int($0)! }
var parent = [Int](repeating: 0, count: n + 1)

func find(x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    return find(x: parent[x])
}

func union(x: Int, y: Int) {
    let x = find(x: x)
    let y = find(x: y)
    
    if x != y {
        if x < y {
            parent[y] = x
        } else {
            parent[x] = y
        }
    }
}

func isSameParent(x: Int, y: Int) -> Bool {
    let x = find(x: x)
    let y = find(x: y)
    
    return x == y
}

for i in 1...n {
    parent[i] = i
}
var party: [[Int]] = []
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").dropFirst().map { Int($0)! }
    party.append(input)
    for i in input {
        union(x: input[0], y: i)
    }
}

if nums.isEmpty {
    print(m)
} else {
    for n in nums {
        union(x: n, y: nums[0])
    }
    
    for p in party {
        if isSameParent(x: nums[0], y: p[0]) {
            m -= 1
        }
    }
    print(m)
}
