var dict: [String: Int] = [:]
for _ in 0..<7 { 
    let input = readLine()!.split{$0 == " "}.map { String($0) }
    let name = input[0], count = Int(input[1])!
    dict[name] = count
}
print(dict.sorted { $0.value > $1.value }.map { $0.key }.first!)
