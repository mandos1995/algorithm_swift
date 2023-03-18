func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    let x = Int(readLine()!.split(separator: " ").map { String($0) }.reduce("", +))!
    let y = Int(readLine()!.split(separator: " ").map { String($0) }.reduce("", +))!
    var array = readLine()!.split(separator: " ").map { String($0) }
    array += array
    var answer = 0
    
    for i in 0..<n {
        if x...y ~= Int(array[i..<i + m].reduce("", +))! {
            answer += 1
        }
    }
    print(answer)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
