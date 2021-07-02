// 데이터의 개수 N과 전체 데이터 선언
let n = 5
let data = [10, 20, 30, 40, 50]

// 접두사 합 (Prefix Sum) 배열 계산
var sum_value = 0
var prefix_sum = [0]
for i in data {
    sum_value += i
    prefix_sum.append(sum_value)
}

// 구간 합 계산 (세 번째 수부터 네 번째 수 까지)
let left = 3
let right = 4
print(prefix_sum[right] - prefix_sum[left - 1])
