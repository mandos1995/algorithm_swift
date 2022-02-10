import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    return Int64(money - (price * (count * (count + 1)) / 2)) > 0 ? 0 : Int64(money - (price * (count * (count + 1)) / 2)) * -1
}
