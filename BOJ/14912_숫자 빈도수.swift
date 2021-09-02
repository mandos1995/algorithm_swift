let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]
var str = ""
var count = 0
for i in 1...n {
    str += String(i)
}

for chr in str {
    if String(chr) == String(k) {
        count += 1
    }
}
print(count)
