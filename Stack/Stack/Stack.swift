//
//  Stack.swift
//  Stack
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// Stack은 Swift의 Array와 유사

struct Stack<T> {
    var elements: [T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    func top() -> T? {
        return elements.last
    }
}
