
// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/

// Time Complexity O(n)
func searchRange(_ nums: [Int], _ target: Int) -> [Int] {

    var leftPointer = 0
    var rightPointer = nums.count - 1
    var leftIndexFound = false
    var rightIndexFound = false

    while (leftPointer < rightPointer) {
        if nums[leftPointer] < target  {
            leftPointer += 1                        
        } else {
            leftIndexFound = true
        }
        if nums[rightPointer] > target  {
            rightPointer -= 1
        } else {
            rightIndexFound = true
        }
        if leftIndexFound && rightIndexFound {
            break
        }
    }

    return [leftPointer, rightPointer]
}


let result = searchRange([5, 6, 7, 7, 7, 7, 10, 13, 13, 56], 13)
print(result)


// Time Complexity O(logn)
func searchRangeUsingBinarySearch(_ input: [Int], _ target: Int) -> [Int] {

    var result = [-1, -1]
    if input.isEmpty {
        return result
    }
    
    result[0] = search(input, target, findStartIndex: true)
    if result[0] != -1 {
        result[1] = search(input, target, findStartIndex: false)
    }    
    return result
}

func search(_ input: [Int], _ target: Int, findStartIndex: Bool) -> Int {
    var result = -1
    var startIndex: Int = 0
    var endIndex: Int = input.count - 1
    var midIndex: Int = 0
    
    while startIndex <= endIndex {
        midIndex = startIndex + (endIndex - startIndex) / 2
        
        if target == input[midIndex] {
            result = midIndex
            if findStartIndex {
                 endIndex = midIndex - 1
            } else {
                startIndex = midIndex + 1
            }
        } else if target < input[midIndex] {
            endIndex = midIndex - 1
        } else if target > input[midIndex] {
            startIndex = midIndex + 1
        }
    }
    return result
}

let result2 = searchRangeUsingBinarySearch([5, 6, 7, 7, 7, 7, 10, 13, 13, 56], 7)
print(result2)