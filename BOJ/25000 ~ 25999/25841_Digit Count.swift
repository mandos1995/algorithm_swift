let input = readLine()!.split(separator: " ").map { String($0) }
let a = Int(input[0])!, b = Int(input[1])!, c = input[2]
var count = 0
for n in a...b {
    for n in "\(n)" {
        if String(n) == c { count += 1}
    }
}

print(count)
