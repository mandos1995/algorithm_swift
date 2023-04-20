let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var LIS = [array.first!]

for i in 1..<n {
    if LIS.last! > array[i] {
        LIS.append(array[i])
        continue
    }
    var start = 0
    var end = LIS.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        if LIS[mid] > array[i] {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    LIS[start] = array[i]
}
print(n - LIS.count)
