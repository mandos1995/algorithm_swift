let s = readLine()!.map { String($0) }
let count = s.count
var mySet: Set<String> = []

for i in 0..<count {
    var str = ""
    for j in i..<count {
        str += s[j]
        mySet.insert(str)
    }
    
}

print(mySet.count)
