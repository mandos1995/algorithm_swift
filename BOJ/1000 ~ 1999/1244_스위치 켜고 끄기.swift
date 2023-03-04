let n = Int(readLine()!)!
var switchs = [false] + readLine()!.split(separator: " ").map { $0 == "1" }

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let isMale = input[0] == 1, target = input[1]
    var d = 1
    if isMale {
        while target * d <= n {
            switchs[target * d].toggle()
            d += 1
        }
    } else {
        switchs[target].toggle()
        while target + d <= n && target - d > 0 && switchs[target + d] == switchs[target - d] {
            switchs[target + d].toggle()
            switchs[target - d].toggle()
            d += 1
        }
    }
}

for i in 0..<n {
    if i % 20 == 0 && i != 0 {
        print()
    }
    print(switchs[i + 1] ? 1 : 0, terminator: " ")
}
