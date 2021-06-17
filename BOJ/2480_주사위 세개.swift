import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let dice1 = input[0]
let dice2 = input[1]
let dice3 = input[2]
var price = 0

if (dice1 == dice2) && (dice1 == dice3){
    price = 10000 + dice1 * 1000
} else if (dice1 == dice2) && (dice1 != dice3){
    price = 1000 + dice1 * 100
} else if (dice2 == dice3) && (dice1 != dice3){
    price = 1000 + dice2 * 100
}else if (dice1 == dice3) && (dice2 != dice3){
    price = 1000 + dice1 * 100
}else {
    price = input.max()! * 100
}
print(price)
