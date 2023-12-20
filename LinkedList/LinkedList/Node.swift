//
//  Node.swift
//  LinkedList
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: 노드

class Node<T: Equatable> {
    
    let idx: Int // 노드 구분용 인덱스
    let data: T // 데이터
    var next: Node? // 다음 노드
    
    init(idx: Int, data: T, next: Node? = nil) {
        self.idx = idx
        self.data = data
        self.next = next
    }
    
}
