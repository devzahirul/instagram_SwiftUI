//
//  FeedCell.swift
//  Instagram
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(spacing: 5) {
           HStack {
             Image(systemName: "person.circle.fill")
             .resizable()
             .frame(width: 40, height: 40)
             .foregroundColor(Color(.systemGray4))
             
             Text("Islam Md. Zahirul")
             .font(.footnote)
             .fontWeight(.semibold)
             Spacer()
           }.padding(.leading)
           //image
           Image("x")
           .resizable()
           .scaledToFill()
           .frame(height: 400)
           
           
           //actions
           HStack() {
               Button{} label: {
                   Image(systemName: "heart")
                   .imageScale(.large)
               }
               
               Button{} label: {
                   Image(systemName: "bubble.right")
                   .imageScale(.large)
               }
               
               Button{} label: {
                   Image(systemName: "paperplane")
                   .imageScale(.large)
               }
               
               Spacer()
           }
           .padding(.leading)
           .foregroundColor(Color.black)
           
           Text("23 likes")
           .font(.footnote)
           .fontWeight(.semibold)
           .frame(maxWidth: .infinity, alignment: .leading)
           .padding(.leading)
           
           HStack {
             Text("@Islam Md. ").fontWeight(.semibold) + Text("Such a nice recepi.love it ")
           }
           .font(.footnote)
           .frame(maxWidth: .infinity, alignment: .leading)
           .padding(.leading)
           
           Text("6h ago")
           .font(.footnote)
           .fontWeight(.semibold)
           .frame(maxWidth: .infinity, alignment: .leading)
           .padding(.leading)
           .foregroundColor(Color(.systemGray4))
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
