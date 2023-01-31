//
//  HomeView.swift
//  Reminder
//
//  Created by 이진희 on 2023/01/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray.opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack(alignment: .top) {
                        VStack {
                            GroupCollectionView(imageName: .constant("calendar.circle.fill"), imageColor: .constant(.blue), count: .constant(1), title: .constant("오늘"))
                            GroupCollectionView(imageName: .constant("tray.circle.fill"), imageColor: .constant(.black),count: .constant(10), title: .constant("전체"))
                            GroupCollectionView(imageName: .constant("checkmark.circle.fill"), imageColor: .constant(.gray),count: .constant(6), title: .constant("완료됨"))
                        }
                        VStack {
                            GroupCollectionView(imageName: .constant("calendar.circle.fill"), imageColor: .constant(.pink),count: .constant(2), title: .constant("예정"))
                            GroupCollectionView(imageName: .constant("flag.circle.fill"), imageColor: .constant(.orange),count: .constant(0), title: .constant("깃발 표시"))
                        }
                        
                    }
                    MyListView()
                    
                    Spacer()
                        
                    HStack {
                        Button {
                            print("Cclicked")
                        } label: {
                            Image(systemName: "plus.circle.fill")
                            Text("새로운 미리 알림")
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Cclicked")
                        } label: {
                            Text("목록 추가")
                        }
                    }.padding()
                }
                .toolbar {
                    Button {
                        print("clicked")
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                }
            }
        }//.background(.red)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
