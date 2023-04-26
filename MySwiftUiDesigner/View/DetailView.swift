//
//  DetailView.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 23/4/2566 BE.
//

import SwiftUI

struct DetailView: View {
    var item: Item
    var body: some View {
        ScrollView {
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
            .background(item.gradient)
            
            VStack(alignment: .leading,spacing: 16){
                Text("SwiftUI is hands-down the best way for designers to take a first step into code. ")
                    .font(.headline)
                Text("This course")
                    .font(.title).bold()
                Text("This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply the techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner-friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions.")
            }
            .padding()
            
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: items[0])
    }
}
