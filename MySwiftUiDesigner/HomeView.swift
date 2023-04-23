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
                        ForEach( 0..<5){item in
//                            NavigationLink{
//                                DetailView()
//                            }label: {
//                                CardView()
//
//                            }
                            NavigationLink(destination: DetailView()) {
                                CardView()
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Learn SwiftUI")
            }
        }    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
