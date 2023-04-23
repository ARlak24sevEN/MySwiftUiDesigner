//
//  CardView.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 23/4/2566 BE.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Image("Blob 1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 128)
                .frame(width: .infinity)
            Text("SwiftUI for iOS 14")
                .font(.title)
                .fontWeight(.bold)
            Text("A complete guide to designing for iOS 14 with videos, examples and design files")
                .lineLimit(2)
                .opacity(0.7)
            Text("20 sections - 3 hourse")
                .opacity(0.7)
            
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(width: 256,height: 329)
        .background(LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.29981932044029236, green: 0.13958334922790527, blue: 0.8374999761581421, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.7541666626930237, green: 0.2042534351348877, blue: 0.583319902420044, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
            endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672)))
        .cornerRadius(30)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
