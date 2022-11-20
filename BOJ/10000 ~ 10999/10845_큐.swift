enum Command: String {
    case push, pop, size, empty, front, back
}
var output = ""
var queue: [Int] = []
var index = 0
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ")
    let command = Command(rawValue: String(input[0]))!
    switch command {
    case .push:
        queue.append(Int(input[1])!)
    case .pop:
        if index == queue.count {
            output += "-1\n"
        } else {
            output += "\(queue[index])\n"
            index += 1
        }
    case .size:
        output += "\(queue[index...].count)\n"
    case .empty:
        output += index == queue.count ? "1\n" : "0\n"
    case .front:
        output += index == queue.count ? "-1\n" : "\(queue[index])\n"
    case .back:
        output += index == queue.count ? "-1\n" : "\(queue.last!)\n"
    }
}
print(output)
