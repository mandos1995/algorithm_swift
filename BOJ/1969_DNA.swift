let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var dna: [[String]] = []
var distance: [(String, Int)] = []
for _ in 0..<n {
    dna.append(readLine()!.map { String($0)})
}

var dict: [String: Int] = [:]
var answer = ""
var hammingDistance = 0

for i in 0..<m {
    dict.removeAll()
    for j in 0..<n {
        if dict[dna[j][i]] == nil {
            dict[dna[j][i]] = 1
        } else {
            dict[dna[j][i]]! += 1
        }
    }
    let word = dict.filter { $0.value == dict.values.max()! }.sorted { $0.key < $1.key }
    hammingDistance += n - word[0].value
    answer += word[0].key
}

print(answer)
print(hammingDistance)
