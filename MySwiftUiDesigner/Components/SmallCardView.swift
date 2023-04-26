//
//  SmallCardView.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 24/4/2566 BE.
//

import SwiftUI

struct SmallCardView: View {
    var item: Item
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 99)
                .frame(maxWidth: .infinity)
            Text(item.title)
                .font(.headline)
                .fontWeight(.bold)
            Text("20 sections - 3 hourse")
                .opacity(0.7)
            
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(height: 222)
        .background(item.gradient)
        .cornerRadius(30)
    }
}

struct SmallCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCardView(item: items[1])
    }
}
