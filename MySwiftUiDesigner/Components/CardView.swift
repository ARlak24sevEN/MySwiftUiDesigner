//
//  CardView.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 23/4/2566 BE.
//

import SwiftUI

struct CardView: View {
//    var item: Item = items[1]
    var item: Item
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 128)
                .frame(width: .infinity)
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
            Text(item.text)
                .lineLimit(2)
                .opacity(0.7)
            Text("20 sections - 3 hourse")
                .opacity(0.7)
            
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(width: 256,height: 329)
        .background(item.gradient)
        .cornerRadius(30)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: items[1])
    }
}
