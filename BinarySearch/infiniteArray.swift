

func solution(input: [Int], target: Int) -> Int {
    var startIndex = 0
    var endIndex = 1

    while target > input[endIndex] {
        let newStartIndex = endIndex + 1
        endIndex = endIndex + (endIndex - startIndex + 1) * 2
        startIndex = newStartIndex
    }
    return binarySearch(input: input, target: target, startIndex: startIndex, endIndex: endIndex)
}

func binarySearch(input: [Int], target: Int, startIndex: Int, endIndex: Int) -> Int {
        
    var start = startIndex
    var end = endIndex
    var mid: Int = -1
    while start <= end {
        mid = start + (end - start) / 2
        
       if target < input[mid] {
            end = mid - 1
        } else if target > input[mid] {
            start = mid + 1
        } else {
            return mid

        }
    }
    return -1
}

let result = solution(input: [2, 6, 12, 43, 56, 108, 212, 215, 300, 400, 401, 402, 501, 502, 601, 605, 610, 615, 700, 712], target: 300)
print(result)
