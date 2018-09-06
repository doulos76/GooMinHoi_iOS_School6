//: Playground - noun: a place where people can play

import UIKit

//: Set

func setTest()
{
    let oddDigits : Set = [1, 3, 5, 9]
    let evenDigits : Set = [2, 4, 6, 8]
    let primeDigits: Set = [2, 3, 5, 7]
    
    print("test=======")
    // 교집합
    let intersectList = oddDigits.intersection(evenDigits)
    print(intersectList)
    // 교집합의 여집합
    let differenceList = oddDigits.symmetricDifference(primeDigits)
    print(differenceList)
    // 합집합 & 정렬
    let unionList = oddDigits.union(evenDigits)
    type(of: unionList)
    let unionListSorted = oddDigits.union(evenDigits).sorted()
    type(of: unionListSorted)
    
    print(unionList)
    // 차집합 & 정렬
    let subtractList = oddDigits.subtracting(primeDigits)
    type(of: subtractList)
    let subtractListSorted = oddDigits.subtracting(primeDigits).sorted()
    type(of: subtractListSorted)
    print(subtractList)
}

setTest()

