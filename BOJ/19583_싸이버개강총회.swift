let input = readLine()!.split(separator: " ").map { String($0) }
let s = input[0].split(separator: ":").map { Int($0)! }, e = input[1].split(separator: ":").map { Int($0)! }, q = input[2].split(separator: ":").map { Int($0)! }
let startTime = s[0] * 60 + s[1]
let endTime = e[0] * 60 + e[1]
let qTime = q[0] * 60 + q[1]

var user: [String: Bool] = [:]

while let input = readLine()?.split(separator: " ").map({ String($0) }) {
    let t = input[0].split(separator: ":").map { Int($0)! }, name = input[1]
    let time = t[0] * 60 + t[1]
    if time <= startTime {
        user[name] = false
        continue
    }
    
    if time >= endTime && time <= qTime {
        if user[name] != nil {
            user[name] = true
        }
        continue
    }
}
print(user.filter { $0.value == true }.count)
