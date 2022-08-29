let input = readLine()!.split(separator: " ").map { Int($0)! }
var time = input[0] * 3600 + input[1] * 60 + input[2]

func timeTransform(time: Int) -> String {
    let hour = time / 3600
    let min = (time % 3600) / 60
    let sec = (time % 3600) % 60
    return "\(hour) \(min) \(sec)"
}

let q = Int(readLine()!)!

for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let t = input[0]
    switch t {
    case 1:
        time += input[1]
        time %= 86_400
    case 2:
        time -= input[1]
        while time < 0 {
            time += 86_400
        }
    case 3:
        print(timeTransform(time: time))
    default:
        continue
    }
    
}
