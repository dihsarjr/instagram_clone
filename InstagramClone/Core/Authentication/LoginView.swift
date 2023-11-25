//
//  LoginView.swift
//  InstagramClone
//
//  Created by Mohammed Rashid on 25/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var emailText = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            
            VStack{
                Spacer()
                Image("Instagram_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 100)
                
                VStack{
                    TextField("Enter your email", text: $emailText)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                    
                    SecureField("Password", text: $password)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                }
                Button{}label:{
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,24)
                    
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .trailing)
                
                Button{}label:{
                    Text("Login")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 44)
                       
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    
                    
                    
                }.padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width:(UIScreen.main.bounds.width/2)-40,height: 0.5)
                        .foregroundColor(Color(.gray))
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width:(UIScreen.main.bounds.width/2)-40,height: 0.5)
                        .foregroundColor(Color(.gray))
                }
                
                Button{}label:{
                    HStack {
                        Image("facebook_logo")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Text("Forgot Password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.horizontal,4)
                        .padding(.trailing,24)
                    }.padding(.top,8)
                    
                }
                Spacer()
                Divider()
                NavigationLink{} label: {
                    HStack(content: {
                        Text("Don't have an account?")
                        Text("Sign Up")
                    })
                        .font(.footnote)
                        .padding(.vertical,16)
                }
                
            }
        }
    }
}

#Preview {
    LoginView()
}
