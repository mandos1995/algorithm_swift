import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let dices = Dictionary([a, b, c, d].map { ($0, 1) }, uniquingKeysWith: +)
    // 네 주사위에서 나온 숫자가 모두 p로 같다면
    if dices.count == 1 {
        return 1111 * a
    }
    // 네 주사위에 적힌 숫자가 모두 다르다면
    else if dices.count == 4 {
        return [a, b, c, d].min()!
    }
    
    // 세 주사위에서 나온 숫자가 p로 같고 나머지 다른 주사위에서 나온 숫자가 q
    else if dices.values.max()! == 3 {
        let pq = dices.sorted { $0.value > $1.value }.map { $0.key }
        let p = pq[0], q = pq[1]
        return (p * 10 + q) * (p * 10 + q)
    }
    // 주사위가 두 개씩 같은 값이 나오고, 나온 숫자를 각각 p, q(p ≠ q)라고 한다면
    else if dices.values.map({ $0 }) == [2, 2] {
        let pq = dices.map { $0.key }
        let p = pq[0], q = pq[1]
        return (p + q) * abs(p - q)
    }
    // 어느 두 주사위에서 나온 숫자가 p로 같고 나머지 두 주사위에서 나온 숫자가 각각 p와 다른 q, r(q ≠ r)이라면
    else {
        let pq = dices.filter { $0.value != 2 }.map { $0.key }
        return pq.reduce(1, *)
    }
}
