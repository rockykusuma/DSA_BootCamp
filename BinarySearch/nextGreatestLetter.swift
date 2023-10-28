
// https://leetcode.com/problems/find-smallest-letter-greater-than-target/description/

 func nextGreatestLetter(letters: [Character], target: Character) -> Character {
    
    var startIndex: Int = 0
    var endIndex: Int = letters.count - 1
    var midIndex: Int = 0    

    while startIndex <= endIndex {
        // Normally we can write the formula like ((startIndex + endIndex) / 2). This works until the summation of startIndex and endIndex exceeds the Integer Size Limit.
        // So in order to come out of this edge case, the below forumula helps us
                
        midIndex = startIndex + (endIndex - startIndex) / 2
        
         if target < letters[midIndex] {
            endIndex = midIndex - 1
        } else {
            startIndex = midIndex + 1
        }
    }
    return letters[startIndex % letters.count]
}

let result2 = nextGreatestLetter(letters: ["x","x","y","y"], target: "z")
print(result2)