let n = Int(readLine()!)!
var infos: [[Int]] = []
var dict: [Int: Set<Int>] = [:]
for _ in 0..<n { infos.append(readLine()!.split(separator: " ").map { Int($0)! })}

for i in 0..<n {
    for j in 0..<n where i != j {
        for k in 0..<5 {
            if infos[i][k] == infos[j][k] {
                dict[i + 1, default: []].insert(j)
            }
        }
    }
}
let maxCount = dict.values.map { $0.count }.max() ?? 0
let keys = dict.filter { $0.value.count == maxCount }.keys
print(keys.sorted { $0 < $1 }.first ?? 1)
