//
//  Sample.swift
//  Reminder
//
//  Created by 이진희 on 2023/01/30.
//

import SwiftUI

struct Sample: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
       
            VStack {
                Text("Hello, World!")
                Button {
                    print("clicked")
                } label: {
                    Text("Button")
                }
            }
            .frame(width: 150, height: 150)
            .background(.yellow)
        }.padding()
    }
}
struct Sample_Previews: PreviewProvider {
    static var previews: some View {
        Sample()
    }
}
