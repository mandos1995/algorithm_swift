let input = readLine()!.split(separator: " ").map{ Int($0)! }
var name1: Set<String> = []
var name2: Set<String> = []
for _ in 0..<input[0] {
    name1.insert(String(readLine()!))
}
for _ in 0..<input[1] {
    name2.insert(String(readLine()!))
}

let newArray = Array(name1.intersection(name2)).sorted()
print(newArray.count)
for i in 0..<newArray.count {
    print(newArray[i])
}
