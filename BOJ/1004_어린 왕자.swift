for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0], y1 = input[1], x2 = input[2], y2 = input[3]
    let n = Int(readLine()!)!
    var count = 0
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let x = input[0], y = input[1], r = input[2]
        let distance1 = (x1 - x) * (x1 - x) + (y1 - y) * (y1 - y)
        let distance2 = (x2 - x) * (x2 - x) + (y2 - y) * (y2 - y)
        let powR = r * r
        
        if powR > distance1 && powR > distance2 {
            continue
        }
        if powR > distance1 {
            count += 1
        }
        if powR > distance2 {
            count += 1
        }
    }
    print(count)
}
