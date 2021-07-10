let input = readLine()!.split(separator: " ")
var max1 = ""
var max2 = ""
var min1 = ""
var min2 = ""
for i in input[0] {
    if i == "5" {
        max1 += "6"
    } else {
        max1 += String(i)
    }
}
for i in input[1] {
    if i == "5" {
        max2 += "6"
    } else{
        max2 += String(i)
    }
}

for i in input[0] {
    if i == "6"{
        min1 += "5"
    } else {
        min1 += String(i)
    }
}
for i in input[1] {
    if i == "6"{
        min2 += "5"
    } else {
        min2 += String(i)
    }
}

print(Int(min1)! + Int(min2)!, Int(max1)! + Int(max2)!)
