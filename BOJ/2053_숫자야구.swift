func permutation<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    var visited = [Bool](repeating: false, count: elements.count)
    
    func permut(_ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        
        for i in 0..<elements.count {
            if visited[i] == true { continue }
            visited[i] = true
            permut(now + [elements[i]])
            visited[i] = false
        }
    }
    permut([])
    return result
}
let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let n = Int(readLine()!)!
let nums = permutation(array, 3)
var isSuccess = [Bool](repeating: true, count: nums.count)
var count = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let callNum = String(input[0]).map { Int(String($0))! }, strike = input[1], ball = input[2]
    for (index, num) in nums.enumerated() {
        var checkStrike = 0
        var checkBall = 0
        if callNum[0] == num[0] {
            checkStrike += 1
        }
        if callNum[1] == num[1] {
            checkStrike += 1
        }
        if callNum[2] == num[2] {
            checkStrike += 1
        }
        if callNum[0] == num[1] || callNum[0] == num[2] {
            checkBall += 1
        }
        if callNum[1] == num[0] || callNum[1] == num[2] {
            checkBall += 1
        }
        if callNum[2] == num[0] || callNum[2] == num[1] {
            checkBall += 1
        }
        if strike != checkStrike || ball != checkBall {
            isSuccess[index] = false
        }
    }
}

for i in isSuccess {
    if i {
        count += 1
    }
}
print(count)
