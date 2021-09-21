func five_pow(_ num: Int) -> Int {
    return num * num * num * num * num
}

let n = readLine()!
var sum = 0

for i in n {
    sum += five_pow(Int(String(i))!)
}
print(sum)
