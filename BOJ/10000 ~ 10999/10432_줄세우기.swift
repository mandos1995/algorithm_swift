func solution(_ n: Int) {
    var student = readLine()!.split(separator: " ")[1...].map { Int($0)! }
    var line = [student.removeFirst()]
    var answer = 0
    for stu in student {
        var isPush = false
        for i in 0..<line.count {
            if line[i] > stu {
                answer += (line.count - i)
                line.insert(stu, at: i)
                isPush = true
                break
            }
            
        }
        if !isPush {
            line.append(stu)
        }
    }
    print(n, answer)
}

let t = Int(readLine()!)!
for i in 1...t {
    solution(i)
}
