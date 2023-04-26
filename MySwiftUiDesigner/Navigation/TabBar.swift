//
//  TabBar.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 24/4/2566 BE.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/){
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ListView()
                .tabItem{
                    Image(systemName: "eyes.inverse")
                        Text("Detail")
                }
        }
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
