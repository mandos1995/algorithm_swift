let str = readLine()!
var check = [false, false, false, false]

for s in str {
    if !check[0] && s == "U" {
        check[0] = true
    }
    
    if check[0] && !check[1] && s == "C" {
        check[1] = true
    }
    
    if check[0] && check[1] && !check[2] && s == "P" {
        check[2] = true
    }
    
    if check[0] && check[1] && check[2] && !check[3] && s == "C" {
        check[3] = true
        break
    }
}

check == [true, true, true, true] ? print("I love UCPC") : print("I hate UCPC")
