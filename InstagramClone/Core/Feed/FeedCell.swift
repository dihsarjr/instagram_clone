//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Mohammed Rashid on 25/11/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            // image + username
            HStack{
                Image("profile_photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40,height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text("Rashid")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
                
            }.padding(.leading,8)
            
            // post image
            
            Image("profile_photo")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            // action button
            HStack(spacing:16){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .foregroundColor(.black)
                })   
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                        .foregroundColor(.black)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                        .foregroundColor(.black)
                })
                Spacer()
                
            }.padding(.leading,8)
                .padding(.top,4)
            
            
            
            // like label
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,3)
            
            // caption
            HStack{
                Text("Rashid ")
                    .fontWeight(.semibold) +
                Text("this is some test caption for now so don't try to play to the  ")
            } .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .font(.footnote)
                .padding(.leading,10)
                .padding(.top,2)
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,2)
                .foregroundColor(.gray)
            
         
        }
    }
}

#Preview {
    FeedCell()
}
