//
//  Queue.swift
//  Queue
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: Normal Queue - dequeue 연산 시간복잡도가 O(N)이므로 느리다.

struct NormalQueue<T> {
    private var queue: [T] = []
    
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
