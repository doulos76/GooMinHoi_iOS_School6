//: Playground - noun: a place where people can play

import UIKit

struct Matrix {
    let rows: Int
    let columns: Int
    
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            return grid[(row * columns) + column]
        }
        set {
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 0] = 1
matrix[0, 1] = 2.5
matrix[1, 0] = 3
matrix[1, 1] = 2

print(matrix)

var unitMatrix = Matrix(rows: 3, columns: 3)
unitMatrix[0, 0] = 1
unitMatrix[1, 1] = 1
unitMatrix[2, 2] = 1

print(unitMatrix)

var identityMatrixOf2x2 = Matrix(rows: 2, columns: 2)
identityMatrixOf2x2[0, 0] = 1
identityMatrixOf2x2[1, 1] = 1
print(identityMatrixOf2x2)

//extension Int {
//
//    mutating func baseNumber(intput: Int) {
//        var tempNum = self
//        var result: Int = tempNum % (powerOf(inputNum: intput - 1))
//        return result
//    }
//
//    func powerOf(inputNum: Int) -> Int {
//        var result: Int = 1
//        for index in 0..<inputNum {
//            result *= 10
//        }
//        return result
//    }
//}
//
//var someInt = 234
//someInt.baseNumber(intput: 2)
//Array


//struct Stack<T> {
//    private var stackTemp: [T] = []
//
//    mutating func push(_ element: T)
//    {
//        self.stackTemp.append(element)
//    }
//
//    func pop() -> T
//    {
//        return stackTemp.last!
//
//    }
//
//}
//
//var st = Stack<Int>()
//var st1 = Stack<String>()
















































// stack
struct Stack<T> {
    private var tempStack: [T] = Array<T>()
    
    mutating func push(inputData: T) {
        return self.tempStack.append(inputData)
    }
    
    mutating func pop() -> T {
        var lastElement: T
        lastElement = tempStack.last!
        self.tempStack.remove(at: tempStack.count - 1)
        return lastElement
    }
}

var testStack = Stack<Int>()

testStack.push(inputData: 5)
print(testStack)
testStack.push(inputData: 2)
print(testStack)
testStack.push(inputData: 10)
print(testStack)
testStack.pop()
print(testStack)
testStack.pop()
print(testStack)
testStack.pop()
print(testStack)

//queue
struct Queue<T> {
    private var tempQueue: [T] = Array<T>()
    
    mutating func push(inputData: T) {
        self.tempQueue.append(inputData)
    }
    
    mutating func pop() -> T {
        var firstElement: T
        firstElement = tempQueue[0]
        self.tempQueue.remove(at: 0)
        return firstElement
    }
}
var testQueue = Queue<Int>()

testQueue.push(inputData: 5)
print(testQueue)
testQueue.push(inputData: 2)
print(testQueue)
testQueue.push(inputData: 10)
print(testQueue)
testQueue.pop()
print(testQueue)
testQueue.pop()
print(testQueue)
testQueue.pop()
print(testQueue)

//heap













