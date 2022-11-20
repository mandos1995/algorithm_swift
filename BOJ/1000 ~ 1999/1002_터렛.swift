import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0]
    let y1 = input[1]
    let r1 = input[2]
    let x2 = input[3]
    let y2 = input[4]
    let r2 = input[5]
    
    // 원의 방정식을 이용해 두 터렛의 거리를 구함
    let distance = Int(pow(Double(x1 - x2),2.0) + pow(Double(y1 - y2),2.0))
    // 중심거리와 두 원의 위치 관계식을 이용하여 두 원의 접점 개수를 알아낸다.
    if distance == 0 && r1 == r2 { // 두 원이 동심원이고 반지름이 같을 때
        print(-1)
    } else if (r1 - r2) * (r1 - r2) == distance || (r1 + r2) * (r1 + r2) == distance { // 내접, 외접일 때
        print(1)
    } else if (r1 - r2) * (r1 - r2) < distance && distance < (r1 + r2) * (r1 + r2) { // 두 원이 서로 다른 두 점에서 만날 때
        print(2)
    } else {
        print(0)
    }
}

