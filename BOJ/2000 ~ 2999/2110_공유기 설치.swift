let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], c = input[1]
var house: [Int] = []
for _ in 0..<n {
    house.append(Int(readLine()!)!)
}

house.sort()

func condition(x: Int) -> Bool {
    var distance = house.first!
    var count = 1
    for i in 1..<n {
        if house[i] - distance >= x {
            distance = house[i]
            count += 1
        }
    }
    return count >= c
}

func binarySearch() -> Int {
    var start = 1
    var end = house.last! - house.first! + 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if condition(x: mid) {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return end
}

print(binarySearch())
