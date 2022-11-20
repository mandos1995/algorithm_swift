let cardCount = Int(readLine()!)!
let cardArray = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let findCardCount = Int(readLine()!)!
let findCardArray = readLine()!.split(separator:  " ").map { Int($0)! }

for find in findCardArray {
    print(binarySearch(target: find),terminator: " ")
}

func binarySearch(target: Int) -> Int {
    var start = 0
    var end = cardCount - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if cardArray[mid] == target {
            return 1
        } else if cardArray[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return 0
}
