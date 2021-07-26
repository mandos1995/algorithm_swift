import Foundation
for i in 1000...9999 {
    var sum10 = 0
    var sum12 = 0
    var sum16 = 0
    var n = i
    
    while n > 0 {
        sum10 += n % 10
        n = n / 10
    }
    n = i
    
    while n > 0 {
        sum12 += n % 12
        n = n / 12
    }
    
    n = i
    while n > 0 {
        sum16 += n % 16
        n = n / 16
    }
    if sum10 == sum12 && sum12 == sum16 {
        print(i)
    }
}
