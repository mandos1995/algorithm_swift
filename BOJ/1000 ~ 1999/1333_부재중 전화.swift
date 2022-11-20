let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let l = input[1]
let d = input[2]
var sec = [Int]()
var bell = 0

for _ in 0..<n{
    for _ in 0..<l{
        sec.append(1)
    }
    for _ in 0..<5{
        sec.append(0)
    }
}

while true{
    if bell > sec.count - 1{
        break
    }
    if sec[bell] == 0{
        break
    } else {
        bell += d
    }
}
print(bell)
