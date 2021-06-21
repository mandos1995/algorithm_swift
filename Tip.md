# Swift 문법 정리
**공백있는 숫자 입력 받기**
```swift
let nums = readLine()!.split(separator: " ").map {Int($0)!}  
```

**compactMap()**
nil값이 아닌 결과를 갖는 배열을 리턴 할 수 있음
```Swift
let input = readLine()!.compactMap{ Int(String($0)) }
// 1 + 2 = 3 입력
// input = [1, 2, 3]
