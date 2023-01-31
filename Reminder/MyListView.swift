//
//  MyListView.swift
//  Reminder
//
//  Created by 이진희 on 2023/01/30.
//

import SwiftUI

struct MyListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("나의 목록").font(.system(size: 20, weight: .bold)).padding(.leading, 30.0)
            List {
                ForEach(reminders) { reminder in
                    NavigationLink(destination: MyListDetailView()) {
                        HStack {
                            Image(systemName: reminder.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.pink)
                                .frame(width: 30.0, height: 30.0)
                            
                            Text(reminder.alarmName).font(.system(size: 14))
                        }
                    }.frame(height: 40)
                    .listSectionSeparator(.hidden, edges: .all)
                }
            }
            .listStyle(.inset)
            .frame(height: CGFloat(reminders.count * 40) + 40)//160.0
            .cornerRadius(16).padding([.leading, .trailing], 16)
        }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
