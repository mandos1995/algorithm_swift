let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let lessonTimes = readLine()!.split(separator: " ").map { Int($0)! }

var start = lessonTimes.max()!
var end = lessonTimes.reduce(0, +)

func condition(x: Int) -> Bool {
    var total = 0
    var count = 0
    for time in lessonTimes {
        total += time
        if total > x {
            count += 1
            total = time
        }
    }
    
    return m <= count
}

while start <= end {
    let mid = (start + end) / 2
    
    if condition(x: mid) {
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(start)
