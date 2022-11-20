let n = readLine()!.map { $0 }
var cache = [Int](repeating: 0, count: n.count + 1)
cache[0] = 1
cache[1] = 1
var isPassword = true

if n[0] == "0" {
    isPassword = false
    print(0)
}
if n.count > 1 && isPassword {
    for i in 2...n.count {
        cache[i] = cache[i - 1] % 1000000
        if Int(String(n[i - 2...i - 1]))! > 10 && Int(String(n[i - 2...i - 1]))! <= 26 && Int(String(n[i - 2...i - 1]))! != 20 {
            cache[i] += (cache[i - 2] % 1000000)
            continue
        }
        
        if Int(String(n[i - 2...i - 1]))! == 10 || Int(String(n[i - 2...i - 1]))! == 20 {
            cache[i] = cache[i - 2] % 1000000
            continue
        }
        
        if Int(String(n[i - 2...i - 1]))! == 0 || Int(String(n[i - 2...i - 1]))! % 10 == 0 {
            isPassword = false
            print(0)
            break
        }
    }
}
if isPassword {
    print(cache[n.count] % 1000000)
}
