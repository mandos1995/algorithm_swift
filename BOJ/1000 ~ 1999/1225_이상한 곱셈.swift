let input = readLine()!.split(separator: " ").map { String($0) }
var sum = 0
var result = 0
for i in input[0] {
    sum += Int(String(i))!
}
for j in input[1] {
    result += sum * Int(String(j))!
}
print(result)
