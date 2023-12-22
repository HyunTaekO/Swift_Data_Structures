//
//  Queue.swift
//  Queue
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: Nomal Queue - dequeue 연산 시간복잡도 O(N)

struct NormalQueue<T> {
    var queue: [T] = []
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    
    var size: Int {
        return queue.count
    }
    
    mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    mutating func dequeue() -> T? {
        return queue.removeFirst() // O(N)
    }
    
    func peek() -> T? {
        return queue.first // O(N)
    }
}
