# Swift 문법 정리
**공백있는 숫자 입력 받기**
```swift
var nums = readLine()!.split(separator: " ").map {Int($0)!}  
```
