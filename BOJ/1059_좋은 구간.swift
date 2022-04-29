let l = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let n = Int(readLine()!)!
var minValue = 1
var maxValue = array.max()!
func solution() -> Int {
    for (index, a) in array.enumerated() {
        if a == n {
            return 0
        }
        if a > n {
            maxValue = a - 1
            if index != 0 {
                minValue = array[index - 1] + 1
            }
            break
        }
    }
    return (maxValue - n) + ((maxValue - n + 1) * (n - minValue))
}

print(solution())
