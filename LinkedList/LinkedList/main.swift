//
//  main.swift
//  LinkedList
//
//  Created by 오현택 on 12/21/23.
//

import Foundation

// MARK: 사용해보기

// 생성
var list = LinkedList<Int>()

// 추가
list.add(Node(idx: 0, data: 1))
list.add(Node(idx: 1, data: 2))
list.add(Node(idx: 2, data: 3))
list.add(Node(idx: 3, data: 4))
list.add(Node(idx: 4, data: 5))

// 출력
print("✅ 초기 상태 출력")
list.printList()

// idx가 5인 노드 뒤에 삽입
list.insertNode(Node(idx: 5, data: 6), after: 4)

// idx가 2인 노드 앞에 삽입
list.insertNode(Node(idx: 6, data: 7), before: 2)

print("📲 삽입 후 출력")
list.printList()

// data가 3인 Node 검색 => 찾은 Optional(Node) 반환
let findNode = list.searchNode(with: 3)
print("🔍 찾은 노드 | idx: \(findNode?.idx) data: \(findNode?.data)")

// findNode 리스트에서 삭제 => 삭제완료(true) : 삭제실패(false) 리턴
let removeComplete = list.removeNode(findNode ?? Node(idx: 0, data: 1))
print("❌ 찾은 노드 삭제 결과: \(removeComplete)")

// 최종 출력
print("🟢 최종 출력")
list.printList()


//  MARK: *Console Result*

//  ✅ 초기 상태 출력
//  ========================
//  idx: 0 data: 1 ->
//  idx: 1 data: 2 ->
//  idx: 2 data: 3 ->
//  idx: 3 data: 4 ->
//  idx: 4 data: 5
//  ========================
//  📲 삽입 후 출력
//  ========================
//  idx: 0 data: 1 ->
//  idx: 1 data: 2 ->
//  idx: 6 data: 7 ->
//  idx: 2 data: 3 ->
//  idx: 3 data: 4 ->
//  idx: 4 data: 5 ->
//  idx: 5 data: 6
//  ========================
//  🔍 찾은 노드 | idx: Optional(2) data: Optional(3)
//  ❌ 찾은 노드 삭제 결과: true
//  🟢 최종 출력
//  ========================
//  idx: 0 data: 1 ->
//  idx: 1 data: 2 ->
//  idx: 6 data: 7 ->
//  idx: 3 data: 4 ->
//  idx: 4 data: 5 ->
//  idx: 5 data: 6
//  ========================

