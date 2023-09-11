let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var p = input[1], h = input[2]

for _ in 0..<n {
    let dollar = Int(readLine()!)!
    
    if dollar > h {
        print("BBTV: Dollar reached \(dollar) Oshloobs, A record!")
        h = dollar
        p = dollar
        continue
    }
    if dollar < p {
        print("NTV: Dollar dropped by \(p - dollar) Oshloobs")
    }
    p = dollar
    
}
