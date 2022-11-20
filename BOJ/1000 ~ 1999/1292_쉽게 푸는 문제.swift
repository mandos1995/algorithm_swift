let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]
let b = input[1]
var arr = [Int]()
for i in 1...45{
    for _ in 1...i{
        arr.append(i)
    }
}
var sum = 0
for i in a - 1 ... b - 1 {
    sum += arr[i]
}
print(sum)
