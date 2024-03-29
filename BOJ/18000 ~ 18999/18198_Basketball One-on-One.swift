let input = readLine()!.map { $0 }
let team = input.filter { !$0.isNumber }
let score = input.filter { $0.isNumber }.map { Int(String($0))! }

var dict: [Character: Int] = [:]
for i in 0..<team.count {
    dict[team[i], default: 0] += score[i]
}

print(dict.sorted { $0.value > $1.value }.map { $0.key }.first! )
