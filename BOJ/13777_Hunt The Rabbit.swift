func binarySearch(array: [Int], target: Int) -> Int? {
    var start = 1
    var end = array.count - 1
    while start <= end {
        let mid = (start + end) / 2
        if array[mid] == target {
            return mid
        } else if array[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
        print(mid, terminator: " ")
    }
    return nil
}

var array = [Int](repeating: 0, count: 51)
for i in 0..<51 {
    array[i] = i
}

while let target = Int(readLine()!) {
    if target == 0 {
        break
    } else {
        print(binarySearch(array: array, target: target) ?? 0)
    }
}
