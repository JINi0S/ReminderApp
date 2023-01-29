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
            VStack {
                HStack(alignment: .top) {
                    VStack {
                        GroupCollectionView(imageName: .constant("calendar.circle.fill"), imageColor: .constant(.blue), count: .constant(1), title: .constant("오늘"))
                        GroupCollectionView(imageName: .constant("tray.circle.fill"), imageColor: .constant(.black),count: .constant(10), title: .constant("전체"))
                        GroupCollectionView(imageName: .constant("calendar.circle.fill"), imageColor: .constant(.secondary),count: .constant(6), title: .constant("완료됨"))
                    }
                    VStack {
                        GroupCollectionView(imageName: .constant("calendar.circle.fill"), imageColor: .constant(.pink),count: .constant(2), title: .constant("예정"))
                        GroupCollectionView(imageName: .constant("flag.circle.fill"), imageColor: .constant(.orange),count: .constant(0), title: .constant("깃발 표시"))
                    }
                    
                }
                HStack {
                    Text("나의 목록")
                        .font(.system(size: 20, weight:
                                .bold))
                        .padding(.top, 8.0)
                        .padding(.leading, 30.0)
                        
                    Spacer()
                }
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
            .background(.quaternary, ignoresSafeAreaEdges: .all)
            .toolbar {
                Button {
                    print("clicked")
                } label: {
                    Image(systemName: "ellipsis.circle")
                } //??????
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
