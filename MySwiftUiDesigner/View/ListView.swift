//
//  ListView.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 23/4/2566 BE.
//

import SwiftUI

struct ListView: View {
    @State var show = false
    var body: some View {
        NavigationView {
            List {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    ListItem()
                        .sheet(isPresented: $show, content:{ DetailView(item: items[0])})
                        .onTapGesture {
                            show.toggle()
                        }
                }
            }
            //            .listStyle(PlainListStyle())
            .navigationTitle("Course")
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
