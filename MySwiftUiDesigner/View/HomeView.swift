//
//  HomeView.swift
//  MySwiftUiDesigner
//
//  Created by Arlak Abdulloh on 23/4/2566 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView (.horizontal,showsIndicators: false){
                    HStack (spacing: 16){
                        ForEach( items){item in
                            //                            NavigationLink{
                            //                                DetailView()
                            //                            }label: {
                            //                                CardView()
                            //
                            //                            }
                            NavigationLink(destination: DetailView(item: item)) {
                                CardView(item: item)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Learn SwiftUI")
                
                Text("Recent course")
                    .font(.subheadline).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 16)],spacing: 16){
                    ForEach(items) { item in
                        NavigationLink(destination: DetailView(item: item)) {
                            SmallCardView(item: item)
                        }
                    }
                }
                .padding()
                
            }
        }    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
