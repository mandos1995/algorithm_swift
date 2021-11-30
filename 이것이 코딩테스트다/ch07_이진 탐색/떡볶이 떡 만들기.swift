func binarySearch(array: [Int], target: Int) -> Int {
    var start = 0
    var end = array.max()!
    var result = 0
    while start <= end {
        var total = 0
        let mid = (start + end) / 2
        for x in array {
            if x > mid {
                total += (x - mid)
            }
        }
        if total < target {
            end = mid - 1
        } else {
            result = mid
            start = mid + 1
        }
    }
    return result
}
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }
print(binarySearch(array: array, target: m))
