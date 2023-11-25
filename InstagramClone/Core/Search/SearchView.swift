//
//  SearchView.swift
//  InstagramClone
//
//  Created by Mohammed Rashid on 25/11/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(0...19,id: \.self){person in
                        HStack(
                            spacing:10, content: {
                            Image("profile_photo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50,height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment:.leading){
                                Text("Rashid")
                                    .font(.footnote)
                                    .fontWeight(.semibold)   
                                Text("Mohammed Rashid")
                                    .font(.footnote)
                                    .fontWeight(.light)
                                
                            }
                                Spacer()
                            
                            }).padding(.horizontal)
                            .padding(.vertical, 1)
                    }
                }
                .searchable(text: $searchText)
            }.navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    SearchView()
}
