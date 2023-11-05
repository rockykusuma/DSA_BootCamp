
// Find peak in Mountain


func findPeakInMountainUsingLinearSearch(input: [Int]) -> Int {
     if input.isEmpty {
        return -1
    }
    var baseValue = input[0]
    for i in 1 ..< input.count {
        if input[i] >= baseValue {
            baseValue = input[i]
        } else {
            return i-1
        }
    }
    return -1
}

func findPeakInMountainUsingBinarySearch(input: [Int]) -> Int {
    if input.isEmpty {
        return -1
    }
    var startIndex = 0
    var endIndex = input.count - 1
    var midIndex = 0

    while(startIndex < endIndex) {
        midIndex = startIndex + (endIndex - startIndex)/2

        if input[midIndex] < input[midIndex+1] {
            startIndex = midIndex + 1
        } else  {
            endIndex = midIndex
        }
    }
    // in the end startIndex and endIdex will be same
    return startIndex
}


let result = findPeakInMountainUsingBinarySearch(input: [0,2,3,4,5,6,5,4,3])
print(result)
