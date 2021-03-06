# Swift 문법 정리
##### 공백있는 숫자 입력 받기
```swift
let nums = readLine()!.split(separator: " ").map {Int($0)!}  
```

##### compactMap()
nil값이 아닌 결과를 갖는 배열을 리턴 할 수 있음
```Swift
let input = readLine()!.compactMap{ Int(String($0)) }
// 1 + 2 = 3 입력
// input = [1, 2, 3]
```

##### 2차원 배열 생성
* 빈 배열 생성 후 입력 받기
```swift
let n = Int(readLine()!)!
var array = [[Int]]()
for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}
print(array)
```

* 크기 정해주기
```swift
let array = [[Int]](repeating: [Int](repeating: 0, count: 5), count: 3)
print(array)
```

##### String Slicing
```Swift
let minseok: String = "minseok"
print(minseok[minseok.startIndex])                      // m

let startIdx = minseok.index(minseok.startIndex, offsetBy: 1)
print(minseok[startIdx])                                // i

let startIdx2 = minseok.index(minseok.startIndex, offsetBy: 2)
print(minseok[startIdx2])                               // n

let endIdx = minseok.index(minseok.endIndex, offsetBy: -1)
print(minseok[endIdx])                                  // k

print(minseok[startIdx2...endIdx])                      // nseok
print(minseok[minseok.startIndex..<minseok.endIndex])   // minseok
```

##### 2차원 배열 정렬
```Swift
let sortedArray = array.sorted { $0.first! < $1.first! }
```
