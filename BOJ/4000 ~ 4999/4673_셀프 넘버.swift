import Foundation
var array = [Bool](repeating: true, count: 10037)
for i in 1..<10001{
    if i < 10 {
        array[i + i] = false
    } else if i >= 10 && i < 100{
        array[i + (i / 10) + (i % 10)] = false
    } else if i >= 100 && i < 1000{
        array[i + (i / 100) + ((i % 100) / 10) + ((i % 100) % 10)] = false
    } else if i >= 1000 && i < 10001{
        array[i + (i / 1000) + ((i % 1000) / 100) + (((i % 1000) % 100) / 10) + (((i % 1000) % 100) % 10)] = false
    }
}
for i in 1..<10001{
    if array[i] == true{
        print(i)
    }
}
