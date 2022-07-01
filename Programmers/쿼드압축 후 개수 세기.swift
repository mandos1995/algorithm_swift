import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var zeroCount = 0
    var oneCount = 0
    func splitArray(_ y: Int, _ x: Int, _ n: Int) {
        if n == 1 {
            if arr[y][x] == 0 {
                zeroCount += 1
            } else {
                oneCount += 1
            }
            return
        }
        var one = 0
        var zero = 0
        for y in y..<y + n {
            for x in x..<x + n {
                if arr[y][x] == 1 {
                    one += 1
                } else {
                    zero += 1
                }
            }
        }
        
        if one == n * n {
            oneCount += 1
            return
        }
        
        if zero == n * n {
            zeroCount += 1
            return
        }
        splitArray(y, x, n / 2)
        splitArray(y, x + n / 2, n / 2)
        splitArray(y + n / 2, x, n / 2)
        splitArray(y + n / 2, x + n / 2, n / 2)
        
    }
    splitArray(0, 0, arr.count)
    
    return [zeroCount, oneCount]
}
