let n = Int(readLine()!)!
let port = readLine()!.split(separator: " ").map { Int($0)! }

var LIS = [port.first!]

for i in 1..<n {
    if LIS.last! < port[i] {
        LIS.append(port[i])
        continue
    }
    
    var start = 0
    var end = LIS.count
    
    while start <= end {
        let mid = (start + end) / 2
        
        if LIS[mid] < port[i] {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    LIS[start] = port[i]
}

print(LIS.count)
