import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var time = 1
    var end = 0
    var index = 0
    var bridge: [(Int, Int)] = []
    while end != truck_weights.count {
        if index == truck_weights.count {
            index -= 1
        }
        if bridge.count < bridge_length && bridge.flatMap{$0.0}.reduce(0, +) + truck_weights[index] <= weight {
            bridge.append((truck_weights[index], 0))
            index += 1
        }
        bridge = bridge.map { ($0.0, $0.1 + 1)}
        if bridge.first!.1 == bridge_length {
            let removed = bridge.removeFirst()
            end += 1
        }
        time += 1
    
    }
    return time
}
