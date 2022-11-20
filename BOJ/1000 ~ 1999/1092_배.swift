let n = Int(readLine()!)!
let crane = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
var m = Int(readLine()!)!
var box = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)

if box.first! > crane.first! {
    print(-1)
} else {
    var answer = 0
    while !box.isEmpty {
        for i in 0..<n {
            for j in 0..<m {
                if crane[i] >= box[j] {
                    box.remove(at: j)
                    m -= 1
                    break
                }
            }
        }
        answer += 1
    }
    print(answer)
}
