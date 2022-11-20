let input = readLine()!.split(separator: " ").map { Int($0)! }
let wc = input[0]
let hc = input[1]
let ws = input[2]
let hs = input[3]

if (wc - ws) >= 2 && (hc - hs) >= 2{
    print(1)
}else{
    print(0)
}
