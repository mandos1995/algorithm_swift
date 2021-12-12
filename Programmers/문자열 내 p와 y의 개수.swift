import Foundation

func solution(_ s:String) -> Bool
{
    var pCount = 0
    var yCount = 0
    for chr in s {
        if chr == "p" || chr == "P" {
            pCount += 1
        } else if chr == "y" || chr == "Y" {
            yCount += 1
        } else {
            continue
        }
    }
    return pCount == yCount
}
