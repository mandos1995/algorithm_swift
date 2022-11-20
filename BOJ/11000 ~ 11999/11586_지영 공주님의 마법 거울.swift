let n = Int(readLine()!)!
var mirror: [[String]] = []
for _ in 0..<n {
    mirror.append(readLine()!.map { String($0) })
}
let k = Int(readLine()!)!
switch k {
case 1 :
    mirror.forEach {
        print($0.reduce("", +))
    }
case 2:
    mirror.forEach {
        print($0.reversed().reduce("", +))
    }
default:
    mirror.reversed().forEach {
        print($0.reduce("", +))
    }
}
