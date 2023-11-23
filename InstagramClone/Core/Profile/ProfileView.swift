//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Mohammed Rashid on 23/11/23.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                // Headers
                VStack(spacing:12){
                 // Pic and status
                    HStack{
                        Image("profile_photo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height:80)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Spacer()
                        HStack(spacing:8){
                            UserStatView(value: 3, title: "Post")
                            UserStatView(value: 1500, title: "Followers")
                            UserStatView(value: 100, title: "Following")
                        }
                 
                        
                    }
                    .padding(.horizontal)
                   
                 // name and bio
                    VStack(alignment:.leading,spacing: 4){
                       Text("Mohammed Rashid")
                            .font(.footnote)
                            .fontWeight(.semibold)
                       Text("Flutter and IOS developer")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal)
                 // Action Button
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360,height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(.gray, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
                    })
                    Divider()
                    
                }
                
                // Post Grid View
                LazyVGrid(columns: gridItems,spacing: 1, content: {
                    ForEach(0...15, id: \.self){index in
                       Image("profile_photo")
                            .resizable()
                            .scaledToFill()
                    }
           
                    
                }
                )
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{} label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
