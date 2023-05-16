func solution() {
    let n = Int(readLine()!)!
    var parent: [String: String] = [:]
    var level: [String: Int] = [:]
    var relations: [String] = []
    
    for _ in 0..<n {
        relations.append(readLine()!)
    }
    
    for relation in relations {
        let names = relation.split(separator: " ").map { String($0) }
        parent[names[0]] = names[0]
        parent[names[1]] = names[1]
        level[names[0]] = 1
        level[names[1]] = 1
    }
    
    for relation in relations {
        let names = relation.split(separator: " ").map { String($0) }
        union(names[0], names[1])
        print(level[find(names[0])]!)
    }
    
    func find(_ name: String) -> String {
        if parent[name]! == name {
            return name
        }
        parent[name] = find(parent[name]!)
        return parent[name]!
    }
    
    func union(_ n1: String, _ n2: String) {
        let n1 = find(n1)
        let n2 = find(n2)
        
        if n1 == n2 {
            return
        }
        if n1 > n2 {
            parent[n1] = n2
        } else {
            parent[n2] = n1
        }
        let maxLevel = level[n1]! + level[n2]!
        level[n1]! = maxLevel
        level[n2]! = maxLevel
    }
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
