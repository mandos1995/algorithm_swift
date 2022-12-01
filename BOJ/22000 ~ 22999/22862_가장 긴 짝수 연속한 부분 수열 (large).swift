let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }

var start = 0
var end = 0
var count = 0
var answer = 0
var flag = true

while end < n {
    if array[end] % 2 == 1 {
        count += 1
    }
    if count > k {
        flag = false
        end -= 1
        count -= 1
        answer = max(answer, end - start + 1 - count)
        if array[start] % 2 == 1 {
            count -= 1
        }
        start += 1
    }
    end += 1
}

if flag {
    print(array.filter { $0 % 2 == 0 }.count)
} else { print(answer )}
