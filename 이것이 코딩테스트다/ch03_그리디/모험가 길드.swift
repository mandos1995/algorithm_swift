let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)

var answer = 0          // 총 그룹 수
var count = 0           // 현재 그룹에 포함된 모험가의 수

for arr in array {      // 공포도를 낮은 것 부터 하나씩 확인
    count += 1          // 현재 그룹에 해당 모험가를 포함
    if count >= arr {   // 현재 그룹에 포함된 모험가의 수가 현재의 공포도 이상이라면,
        answer += 1     // 총 그룹의 수 증가
        count = 0       // 현재 그룹에 포함된 모험가 수 초기화
    }
}

print(answer)
