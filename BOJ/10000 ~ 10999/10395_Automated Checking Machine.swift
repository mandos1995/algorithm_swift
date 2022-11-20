let x = readLine()!.split(separator: " ")
let y = readLine()!.split(separator: " ")
let n = x.count
var answer = "Y"
for i in 0..<n {
    if x[i] != y[i] {
        continue
    } else {
        answer = "N"
        break
    }
}
print(answer)
