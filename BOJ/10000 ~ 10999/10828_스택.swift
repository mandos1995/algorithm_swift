var stack: [Int] = []
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { String($0) }
    switch input[0] {
    case "push":
        stack.append(Int(input[1])!)
    case "pop":
        print(stack.popLast() ?? -1)
    case "size":
        print(stack.count)
    case "empty":
        stack.isEmpty == true ? print(1) : print(0)
    case "top":
        print(stack.last ?? -1)
    default:
        continue
    }
}
