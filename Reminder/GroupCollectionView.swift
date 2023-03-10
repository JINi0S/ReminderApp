//
//  GroupCollectionView.swift
//  Reminder
//
//  Created by 이진희 on 2023/01/28.
//

import SwiftUI

struct GroupCollectionView: View {
    @Binding var imageName: String
    @Binding var imageColor: Color
    @Binding var count: Int
    @Binding var title: String
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(imageColor)
                    .frame(width: 30.0, height: 30.0)
                Spacer()
                Text("\(count)")
                    .font(.system(size: 24, weight: .bold))
            }
            Text(title).foregroundColor(.secondary)
                .font(.system(size: 14, weight: .medium))
        }
        .padding()
        .frame(width: 180.0, height: 70)
        .background(.white)
        .cornerRadius(16)
    }

}

struct GroupCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCollectionView(imageName: .constant("calendar.circle.fill"), imageColor: .constant(Color.gray), count: .constant(0), title: .constant("오늘"))
    }
}
