let t = Int(readLine()!)!
var array: [[Int]] = []
for _ in 0..<t {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
    
}
let sortedArray = array.sorted { $0.first! < $1.first! }
var sum = 0
for i in 0..<sortedArray.count {
    if sum > sortedArray[i][0] {
        sum += sortedArray[i][1]
    } else {
        sum = sortedArray[i][0]
        sum += sortedArray[i][1]
    }
}
print(sum)
