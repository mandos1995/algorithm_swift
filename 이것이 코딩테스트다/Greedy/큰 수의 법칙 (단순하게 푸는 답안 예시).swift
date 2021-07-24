let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var m = input[1]
let k = input[2]
var data = readLine()!.split(separator: " ").map { Int($0)! }
data.sort(by: >)

let first = data[0] // 가장 큰 수
let second = data[1] // 두 번째로 큰 수

var result = 0

while true{
    for _ in 0..<k{ // 가장 큰 수를 k번 더하기
        if m == 0{ // m이 0이라면 반복문 탈출
            break
        }
        result += first
        m -= 1 // 더할 때 마다 1씩 빼기
    }
    if m == 0{ // m이 0이라면 반복문 탈출
        break
    }
    result += second // 두 번째로 큰 수를 한 번 더하기
    m -= 1 // 더할 때 마다 1씩 빼기
}
print(result) // 최종 답안 출력
