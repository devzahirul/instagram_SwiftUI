//
//  FeedView.swift
//  Instagram
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
    NavigationStack {
      VStack {
        ScrollView(showsIndicators: false) {
        
            ForEach(0...10, id: \.self) {i in
            
              FeedCell()
            
            }
        }
        }.navigationTitle(Text("Feed"))
        .navigationBarTitleDisplayMode(.inline)
            .toolbar {
              
                ToolbarItem(placement: .navigationBarTrailing) {
                     Button {
                       
                   
                    } label: {
                        Image(systemName: "paperplane")
                        .foregroundColor(Color.black)
                    }
                }
                
                
                ToolbarItem(placement: .navigationBarLeading) {
                     Button {
                       
                   
                    } label: {
                        Image("ddd")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130)
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
