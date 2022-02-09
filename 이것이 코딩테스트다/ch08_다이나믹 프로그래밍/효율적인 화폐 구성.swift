// 정수 N, M을 입력받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

// N개의 화폐 단위 정보를 입력받기
var coins: [Int] = []
for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

// 한 번 계산된 결과를 저장하기 위한 DP 테이블 초기화
var d = [Int](repeating: 10001, count: m + 1)

// 다이나믹 프로그래밍 진행(보텀업)
d[0] = 0
for coin in coins {
    if coin < m {
        for j in coin...m {
            d[j] = min(d[j], d[j - coin] + 1)
        }
    }
}

d[m] == 10001 ? print(-1) : print(d[m])
