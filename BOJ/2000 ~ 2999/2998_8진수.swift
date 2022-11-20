var binary = readLine()!
var step = binary.count % 3
let array = ["000", "001", "010", "011", "100", "101", "110", "111"]
step = step == 0 ? 3 : step
var result = ""
if step == 2 {
    binary = "0" + binary
} else if step == 1 {
    binary = "00" + binary
}

var temp = ""
for num in binary {
    temp += String(num)
    if temp.count == 3 {
        result += String(array.firstIndex(of: temp)!)
        temp = ""
    }
}

print(result)
