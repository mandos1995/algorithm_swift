var dict: [String: Int] = [:]
while let input = readLine()?.split(separator: " ").map({ String($0) }), input[0] != "Waterloo" {
    let name = input[0], n = Int(input[1])!
    dict[name] = n
}
print(dict.min { $0.value < $1.value }.map { $0.key }! )
