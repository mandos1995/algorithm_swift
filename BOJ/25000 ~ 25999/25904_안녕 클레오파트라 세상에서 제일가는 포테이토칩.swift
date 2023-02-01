let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var x = input[1]

let array = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
mainloop: while true {
    for i in 0..<n {
        if array[i] < x {
            answer = i + 1
            break mainloop
        }
        x += 1
    }
}

print(answer)
