import Foundation
var bessie = readLine()!.split(separator: " ").map { Int($0)! }
var daisy = readLine()!.split(separator: " ").map { Int($0)! }
let john = readLine()!.split(separator: " ").map { Int($0)! }
var bessie_time = 0
var daisy_time = 0

while true {
    if bessie[0] == john[0] && bessie[1] == john[1]{
        break
    }
    if bessie[0] > john[0] && bessie[1] > john[1]{
        bessie[0] -= 1
        bessie[1] -= 1
        bessie_time += 1
    } else if bessie[0] > john[0] && bessie[1] == john[1]{
        bessie[0] -= 1
        bessie_time += 1
    } else if bessie[0] < john[0] && bessie[1] == john[1]{
        bessie_time += 1
        bessie[0] += 1
    } else if bessie[0] < john[0] && bessie[1] < john[1]{
        bessie[0] += 1
        bessie[1] += 1
        bessie_time += 1
    } else if bessie[0] == john[0] && bessie[1] > john[1]{
        bessie[1] -= 1
        bessie_time += 1
    } else if bessie[0] == john[0] && bessie[1] < john[1]{
        bessie[1] += 1
        bessie_time += 1
    } else if bessie[0] < john[0] && bessie[1] > john[1]{
        bessie[0] += 1
        bessie[1] -= 1
        bessie_time += 1
    } else if bessie[0] > john[0] && bessie[1] < john[1]{
        bessie[0] -= 1
        bessie[1] += 1
        bessie_time += 1
    }
}
while true {
    if daisy[0] == john[0] && daisy[1] == john[1]{
        break
    }
    if daisy[0] > john[0] {
        daisy[0] -= 1
        daisy_time += 1
    } else if daisy[0] < john[0] {
        daisy[0] += 1
        daisy_time += 1
    } else if daisy[1] > john[1] {
        daisy[1] -= 1
        daisy_time += 1
    } else if daisy[1] < john[1] {
        daisy[1] += 1
        daisy_time += 1
    }
}
if bessie_time == daisy_time{
    print("tie")
} else if bessie_time < daisy_time{
    print("bessie")
} else{
    print("daisy")
}
