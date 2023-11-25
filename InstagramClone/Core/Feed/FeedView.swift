//
//  FeedView.swift
//  InstagramClone
//
//  Created by Mohammed Rashid on 25/11/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing:20){
                    ForEach(0...10, id: \.self){post in
                    FeedCell()}
                }
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Image("Instagram_logo")
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 32)
                    
                }    
                ToolbarItem(placement: .topBarTrailing){
                    Image(systemName: "paperplane")
                        .foregroundColor(.black)
                        .imageScale(.large)
                    
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
