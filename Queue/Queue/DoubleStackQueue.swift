//
//  DoubleStackQueue.swift
//  Queue
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: Array(Stack) 두개로 만드는 큐
// 스택 1개는 입력용, 다른 하나는 입력용 스택을 reversed()하여 출력용으로 사용한다.
// 배열(스택)의 popLast는 항상 O(1)을 보장하기에 dequeue 연산이 효율적이다.
// 단점으로 input 스택을 비울 때 O(N) 시간 복잡도가 발생한다..

struct DoubleStackQueue<T> {
    var input: [T] = []
    var output: [T] = []
        
    var isEmpty: Bool {
        return input.isEmpty && output.isEmpty
    }
    
    var size: Int {
        return input.count + output.count
    }
    
    mutating func enqueue(_ element: T) {
        input.append(element)
    }
    
    mutating func dequeue() -> T? {
        if output.isEmpty {
            output = input.reversed() // O(1)
            input.removeAll() // O(N)
        }
        return output.popLast() // O(1)
    }
    
    mutating func peek() -> T? {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.last
    }
}
