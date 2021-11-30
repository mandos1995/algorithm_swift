// 1. 이진 탐색으로 풀이
// 이진 탐색 소스코드 구현 (반복문)
func binarySearch(array: [Int], target: Int) -> Int? {
    var start = 0
    var end = array.count - 1

    while start <= end {
        let mid = (start + end) / 2
        // 찾은 경우 중간점 인덱스 반환
        if array[mid] == target {
            return mid
        } else if array[mid] < target {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return nil
}

let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let m = Int(readLine()!)!
let x = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<m {
    binarySearch(array: array, target: x[i]) != nil ? print("yes", terminator: " ") : print("no", terminator: " ")
}

// 2. 계수 정렬
let n = Int(readLine()!)!
var array = [Int](repeating: 0, count: 1000001)

// 가게에 있는 전체 부품 번호를 입력받아서 기록
for i in readLine()!.split(separator: " ").map({ Int($0)! }) {
    array[i] = 1
}

// 손님이 확인 요청한 부품 개수를 입력받기
let m = Int(readLine()!)!
let x = readLine()!.split(separator: " ").map { Int($0)! }

for i in x {
    array[i] == 1 ? print("yes", terminator: " ") : print("no", terminator: " ")
}

// 3. 집합 자료형 이용
let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let setArray = Set(array)

let m = Int(readLine()!)!
let x = readLine()!.split(separator: " ").map { Int($0)! }

for i in x {
    if setArray.contains(i) {
        print("yes", terminator: " ")
    } else {
        print("no", terminator: " ")
    }
}
