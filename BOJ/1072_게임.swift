let input = readLine()!.split(separator: " ").map { Int($0)! }
var x = input[0], y = input[1]
let target = y * 100 / x
func binarySearch() -> Int {
    var start = 0
    var end = 1_000_000_000
    
    while start <= end {
        let mid = (start + end) / 2
        if isVaild(mid: mid) {
            end = mid - 1
        } else {
            start = mid + 1
        }
        
    }
    return start
}

func isVaild(mid: Int) -> Bool {
    let z = (y + mid) * 100 / (x + mid)
    return z > target
}

let answer = binarySearch()
answer > 1_000_000_000 ? print(-1) : print(answer)
