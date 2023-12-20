//
//  LinkedList.swift
//  LinkedList
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: 링크드리스트

struct LinkedList<T: Equatable> {
    
    var head: Node<T>?
    var tail: Node<T>?
    
    // 리스트 출력
    func printList() {
        var now = head
        print("========================")
        while now != nil {
            now?.next == nil
            ? print("idx: \(now!.idx) data: \(now!.data)")
            : print("idx: \(now!.idx) data: \(now!.data) -> ")
            now = now?.next
        }
        print("========================")
    }
    
    // 노드 추가
    mutating func add(_ node: Node<T>) {
        if head == nil {
            head = node
            tail = node
            return
        }
        tail?.next = node
        tail = node
    }
    
    // 노드 탐색
    mutating func searchNode(with data: T) -> Node<T>? {
        var now = head
        while now != nil {
            if now?.data == data {
                return now
            }
            now = now?.next
        }
        return nil
    }
    
    // idx 뒤에 노드 삽입
    mutating func insertNode(_ node: Node<T>, after idx: Int) {
        var now = head
        while now?.idx != idx && now?.next != nil {
            now = now?.next
        }
        node.next = now?.next
        now?.next = node
    }
    
    // idx 앞에 노드 삽입
    mutating func insertNode(_ node: Node<T>, before idx: Int) {
        var now = head
        if now?.idx == idx {
            head = node
            node.next = now
            return
        }
        while now?.next?.idx != idx && now?.next != nil {
            now = now?.next
        }
        node.next = now?.next
        now?.next = node
    }
    
    // 노드 삭제
    mutating func removeNode(_ node: Node<T>) -> Bool {
        var now = head
        if now === node {
            if head === tail { tail = nil }
            head = now?.next
            return true
        }
        
        while now?.next !== node && now?.next != nil {
            now = now?.next
        }
        
        if now == nil { return false }
        
        if now?.next === tail {
            tail = now
        }
        
        now?.next = now?.next?.next
        
        return true
    }
    
}
