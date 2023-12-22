//
//  IndexQueue.swift
//  Queue
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: 내부에 dequeue될 index를 가지고 있는 큐 (커서 큐)
// dequeue 연산 시간 O(1)을 보장하지만, data가 실제 삭제되는게 아니므로
// data가 많아질 경우 메모리 사용량이 커지는 단점이 있다. 
// => 일정 크기 이상되면 삭제해주는 방법이 있다.

struct IndexQueue<T> {
    var queue: [T] = []
    private var index = 0
    
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
        let idx = index
        if idx < queue.count {
            index += 1
            return queue[idx]
        }
        return nil
    }
    
    func peek() -> T? {
        return index < queue.count ? queue[index] : nil
    }
}
