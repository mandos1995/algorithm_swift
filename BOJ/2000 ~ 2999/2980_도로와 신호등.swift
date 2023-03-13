typealias LightInfo = (r: Int, g: Int)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1]
var lightInfos = [LightInfo?](repeating: nil, count: l + 1)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    lightInfos[input[0]] = LightInfo(r: input[1], g: input[2])
}

var currentTime = 0
var position = 0

while position < l {
    currentTime += 1
    position += 1
    if let lightInfo = lightInfos[position] {
        let cycle = lightInfo.r + lightInfo.g
        currentTime += max(0, lightInfo.r - currentTime % cycle)
    }
}

print(currentTime)
