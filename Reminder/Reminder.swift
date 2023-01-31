//
//  Reminder.swift
//  Reminder
//
//  Created by 이진희 on 2023/01/30.
//

import Foundation

struct Reminder: Identifiable {
    var alarmName: String
    var image: String
    let id = UUID()
}


var reminders = [
    Reminder(alarmName: "미리 알림", image: "list.bullet.circle.fill"),
    Reminder(alarmName: "학교", image: "book.circle.fill"),
    Reminder(alarmName: "이사 준비", image: "house.circle.fill")

]
