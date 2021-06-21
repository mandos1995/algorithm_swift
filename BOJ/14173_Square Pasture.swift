let input = readLine()!.split(separator: " ").map{ Int($0)! }
let input2 = readLine()!.split(separator: " ").map{ Int($0)! }
let x_input = [input[0],input[2],input2[0],input2[2]]
let y_input = [input[1],input[3],input2[1],input2[3]]
let x_distance = x_input.max()! - x_input.min()!
let y_distance = y_input.max()! - y_input.min()!
let result = max(x_distance,y_distance)
print(result * result)
