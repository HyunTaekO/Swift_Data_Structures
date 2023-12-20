//
//  main.swift
//  Stack
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: 사용하기

var stack = Stack<Int>()

// isEmpty
print("Stack이 비어있니? \(stack.isEmpty)")

// push
stack.push(1)
stack.push(2)
stack.push(3)

// count
print("Stack에 원소 개수를 알아보자 \(stack.count)개")

// top
print("Stack에 맨 위에 있는 원소를 읽어오자 \(stack.top())")

// pop
print("Stack에 맨 위에 있는 원소를 꺼내오자 \(stack.pop())")


// MARK: *Excute*

// Stack이 비어있니? true
// Stack에 원소 개수를 알아보자 3개
// Stack에 맨 위에 있는 원소를 읽어오자 Optional(3)
// Stack에 맨 위에 있는 원소를 꺼내오자 Optional(3)
