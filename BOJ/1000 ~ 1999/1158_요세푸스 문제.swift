let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
var queue = ArraySlice<Int>(1 ... n)

var result = ""
while true {
    if queue.isEmpty {
        break
    }
    for _ in 0 ..< k - 1 {
        queue.append(queue.removeFirst())
    }
    let a = String(queue.removeFirst())
    result.append(a + ", ")
}
result.removeLast()
result.removeLast()
print("<" + result + ">")
