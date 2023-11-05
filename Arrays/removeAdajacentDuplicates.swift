/*
 Remove adjacent duplicate letters, one pair at a time where both members of a pair of adjacent duplicate letters need to be removed.
 Eg
 Input: s = "abbaca" caaa > ca
 Output: "ca"
 Input: s = "azxxzy" azzy > ay
 Output: "ay"
 */

extension StringProtocol {
    subscript(offset: Int) -> Character { self[index(startIndex, offsetBy: offset)] }
}

func testDuplicate() {
    var input = [
        "g",
        "ggaabcdeb", // bcdeb
        "abbddaccaaabcd", // abcd
        "aannkwwwkkkwna",
        "abbabccblkklu"
    ];
    print(input);
    
    for (index, element) in input.enumerated() {
        let temp = removeDuplicate(input: element)
        input[index] = temp
    }
    print(input);
}

func removeDuplicate(input: String) -> String {
    var temporaryString = ""
    for char in input {
        if let value = temporaryString.last, value == char {
            temporaryString.removeLast()
        } else {
            temporaryString.append(char)
        }
    }
    return temporaryString
}


func removeDuplicates(_ input: String, _ k: Int) -> String {
    var resultString = ""
    for char in input {
        if let value = resultString.last, value == char, isUnique(resultString: resultString, char: char, k: k) {
            // pop k-1 elements
            for _ in 0 ..< k-1 {
                if (!resultString.isEmpty) {
                    resultString.removeLast()
                }                
            }         
        } else {
            resultString.append(char)
        }
    }
    return resultString
}

func isUnique(resultString: String, char: Character, k: Int) -> Bool {
    var count = 0
    if resultString.count < k-1 {
        return false
    }
    while count < k-1 {
        let lastIndex = resultString.count - 1
        let temp = resultString[lastIndex - count]
        if char != temp {
            return false
        }
        count += 1
    }
    return true
}


let result = removeDuplicates("deeedbbcccbdaa", 3)
// let result = removeDuplicates("aabcccd", 3)
print(result)
