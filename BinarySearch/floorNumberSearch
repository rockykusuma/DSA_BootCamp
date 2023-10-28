// Search the smallest floor number in the sorted array using Binary Search Algorithm

// Return the index of greatest number <= target
func floorNumberSearch(input: [Int], target: Int) -> Int {
        
    if input.isEmpty {
        return -1
    }
    
    var startIndex: Int = 0
    var endIndex: Int = input.count - 1
    var midIndex: Int = 0    

    while startIndex <= endIndex {
        // Normally we can write the formula like ((startIndex + endIndex) / 2). This works until the summation of startIndex and endIndex exceeds the Integer Size Limit.
        // So in order to come out of this edge case, the below forumula helps us
                
        midIndex = startIndex + (endIndex - startIndex) / 2
        
        if target == input[midIndex] {
            return midIndex
        } else if target < input[midIndex] {
            endIndex = midIndex - 1
        } else if target > input[midIndex] {
            startIndex = midIndex + 1            
        }
    }

    return endIndex
}

let result = floorNumberSearch(input: [2, 6, 12, 43, 56, 108, 212, 514], target: 1)
print(result)