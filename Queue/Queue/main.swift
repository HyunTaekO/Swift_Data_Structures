//
//  main.swift
//  Queue
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

var normalQueue = NormalQueue<Int>()
print("====  Normal Queue  ====")
normalQueue.enqueue(1)
normalQueue.enqueue(2)
normalQueue.enqueue(3)
print("Queue: \(normalQueue)")

print("Size: \(normalQueue.size) | isEmpty: \(normalQueue.isEmpty) | peek: \(normalQueue.peek())")

print("dequeue: \(normalQueue.dequeue())")

print("Queue: \(normalQueue)") // [2, 3]

print("=======================\n")


var indexQueue = IndexQueue<Int>()
print("====  Index Queue  ====")
indexQueue.enqueue(1)
indexQueue.enqueue(2)
indexQueue.enqueue(3)
print("Queue: \(indexQueue)")

print("Size: \(indexQueue.size) | isEmpty: \(indexQueue.isEmpty) | peek: \(indexQueue.peek())")

print("dequeue: \(indexQueue.dequeue())")

print("Queue: \(indexQueue)") // [1, 2, 3]

print("=======================\n")


var doubleStackQueue = DoubleStackQueue<Int>()
print("====  Double Stack Queue  ====")
doubleStackQueue.enqueue(1)
doubleStackQueue.enqueue(2)
doubleStackQueue.enqueue(3)
print("Queue: \(doubleStackQueue)")

print("Size: \(doubleStackQueue.size) | isEmpty: \(doubleStackQueue.isEmpty) | peek: \(doubleStackQueue.peek())")

print("dequeue: \(doubleStackQueue.dequeue())")

print("Queue: \(doubleStackQueue)") // input: [], output: [3, 2]

print("=======================\n")



// MARK: *Output*

//    ====  Normal Queue  ====
//    Queue: NormalQueue<Int>(queue: [1, 2, 3])
//    Size: 3 | isEmpty: false | peek: Optional(1)
//    dequeue: Optional(1)
//    Queue: NormalQueue<Int>(queue: [2, 3])
//    =======================
//
//    ====  Index Queue  ====
//    Queue: IndexQueue<Int>(queue: [1, 2, 3], index: 0)
//    Size: 3 | isEmpty: false | peek: Optional(1)
//    dequeue: Optional(1)
//    Queue: IndexQueue<Int>(queue: [1, 2, 3], index: 1)
//    =======================
//
//    ====  Double Stack Queue  ====
//    Queue: DoubleStackQueue<Int>(input: [1, 2, 3], output: [])
//    Size: 3 | isEmpty: false | peek: Optional(1)
//    dequeue: Optional(1)
//    Queue: DoubleStackQueue<Int>(input: [], output: [3, 2])
//    =======================
