let n = Int(readLine()!)!
let file = readLine()!.split(separator: " ").map { Int(String($0))! }
let cluster = Int(readLine()!)!
var size = 0
var sum = 0
for i in 0..<n {
    if file[i] == 0 {
        continue
    } else {
        size += file[i] % cluster == 0 ? (file[i] / cluster) * cluster : (file[i] / cluster + 1) * cluster
    }
}
print(size)
