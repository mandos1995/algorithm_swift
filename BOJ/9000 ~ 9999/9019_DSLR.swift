func commandD(x: Int) -> Int {
    return (x * 2) % 10000
}

func commandS(x: Int) -> Int {
    return x - 1 < 0 ? 9999 : x - 1
}

func commandL(x: Int) -> Int {
    return (x % 1000) * 10 + x / 1000
}
func commandR(x: Int) -> Int {
    return (x % 10) * 1000 + x / 10
}

var commands = [commandD, commandS, commandL, commandR]
var com = ["", "D", "S", "L", "R"]

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0], target = input[1]
    var visited = [Bool](repeating: false, count: 10000)
    var queue = [(start, 0)]
    
    var index = 0
    var answer = ""
    while index < queue.count {
        let x = queue[index].0
        let command = queue[index].1
        visited[x] = true
        if x == target {
            for str in String(command) {
                answer += com[Int(String(str))!]
            }
            print(answer)
            break
        }
        
        for (index, nx) in [commandD(x: x), commandS(x: x), commandL(x: x), commandR(x: x)].enumerated()  {
            let newCommand = command * 10 + (index + 1)
            
            if nx < 10000 && !visited[nx] {
                visited[nx] = true
                queue.append((nx, newCommand))
            }
        }
        index += 1
    }
    
}
