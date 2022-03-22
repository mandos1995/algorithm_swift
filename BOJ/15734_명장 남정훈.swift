let input = readLine()!.split(separator: " ").map { Int($0)! }
var l = input[0], r = input[1], a = input[2]

while a != 0 {
    if l > r {
        r += 1
        a -= 1
        continue
    }
    
    if r > l {
        l += 1
        a -= 1
        continue
    }
    
    if l == r {
        if a > 1 {
            r += 1
            l += 1
            a -= 2
            continue
        } else {
            break
        }
    }
}
print(min(l, r) * 2)
