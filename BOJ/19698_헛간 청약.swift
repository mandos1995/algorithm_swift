let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let w = input[1]
let h = input[2]
let l = input[3]

let result = min((w / l) * (h / l), n)
print(result)
