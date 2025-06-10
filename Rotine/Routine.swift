//
//  Routine.swift
//  Rotine
//
//  Created by 김경태 on 6/10/25.
//

import Foundation

struct Routine: Identifiable, Codable {
    
    let id: UUID            // 루틴 고유 ID
    var title: String       // 루틴 명
    var time: Date          // 시간 설정
    var repeatDays: [Int]   // 반복 요일
    var isCompleted: Bool   // 완료 여부
    let createdAt: Date     // 루틴 생성 시각
    
    init(title: String, time: Date, repeatDays: [Int]){
        self.id = UUID() // 자동으로 고유 ID 생성
        self.title = title
        self.time = time
        self.repeatDays = repeatDays
        self.isCompleted = false // 기본값 : 미완료
        self.createdAt = Date() // 지금 시간 기준으로 생성됨
    }
}
