//
//  ContentView.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 21/4/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       HomeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home") }.tag(1)
            DetailView().tabItem {
                Image(systemName: "eyes.inverse")
                Text("Detail") }.tag(2)
        }
       
    }
}

