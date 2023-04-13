let n = Int(readLine()!)!
let k = Int(readLine()!)!

func condition(x: Int) -> Bool {
    var count = 0
    for i in 1...n {
        count += min(n, x / i)
    }
    return count >= k
}

func binarySearch() {
    var start = 1
    var end = k
    
    while start <= end {
        let mid = (start + end) / 2
        
        if condition(x: mid) {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    print(start)
}

binarySearch()
