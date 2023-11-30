let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let elements = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
func selectNumber(_ selectedArray: [Int]) {
    let num = selectedArray.sum
    if num <= n {
        answer = max(answer, num)
    }
    if selectedArray.count == "\(n)".count {
        return
    }
    for element in elements {
        selectNumber(selectedArray + [element])
    }
}

selectNumber([])
print(answer)

extension Array where Element == Int {
    var sum: Int {
        var value = 0
        var step = 1
        self.reversed().forEach {
            value += $0 * step
            step *= 10
        }
        return value
    }
}
