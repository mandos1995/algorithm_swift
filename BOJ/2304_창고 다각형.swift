let n = Int(readLine()!)!
var stick: [(Int, Int)] = []
var maxLongth = 0
var maxStick = (0, 0)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    stick.append((input[0], input[1]))
    if maxLongth < input[1] {
        maxLongth = input[1]
        maxStick = (input[0], input[1])
        
    }
}
stick.sort { $0.0 < $1.0 }

let maxIndex = stick.firstIndex { (l, h) in
    maxStick == (l, h)
}
var startStick = stick[0]
var result = stick[maxIndex!].1
for i in 0...maxIndex! {
    if startStick.1 <= stick[i].1 {
        result += (stick[i].0 - startStick.0) * startStick.1
        startStick = stick[i]
    }
}
var endStick = stick[n - 1]
for i in (maxIndex!..<n).reversed() {
    if endStick.1 <= stick[i].1 {
        result += (endStick.0 - stick[i].0) * endStick.1
        endStick = stick[i]
    }
}
print(result)
