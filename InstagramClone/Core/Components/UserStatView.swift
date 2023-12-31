//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Mohammed Rashid on 23/11/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
            
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStatView(value: 3, title: "String")
}
