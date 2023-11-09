//
//  ProfileView.swift
//  Instagram
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct ProfileView: View {


    private var gridItem: [GridItem] = [
      .init(.flexible(), spacing: 1),
      .init(.flexible(), spacing: 1),
      .init(.flexible(), spacing: 1)
    ]
      @State var toggole: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
               //header
               VStack {
               //pic and stats
                HStack {
                 Image(systemName: "person.circle.fill")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 84, height: 84)
                 .foregroundColor(Color(.systemGray4))
                 
                 Spacer()
                 VStack {
                  Text("3")
                  .font(.subheadline)
                  .fontWeight(.semibold)
                  Text("Posts")
                  .font(.footnote)
                 }
                  Spacer()
                 VStack {
                  Text("3")
                  .font(.subheadline)
                  .fontWeight(.semibold)
                  Text("Followers")
                  .font(.footnote)
                 }
                  Spacer()
                 VStack {
                  Text("3")
                  .font(.subheadline)
                  .fontWeight(.semibold)
                  Text("Following")
                  .font(.footnote)
                 }
                 
                 Spacer()
                 
                 
                }.padding(.horizontal)
                //name and bio
                VStack(alignment: .leading) {
                  Text("Islam Md. Zahirul")
                  .font(.footnote)
                  .fontWeight(.semibold)
                  Text("Hi!I am here")
                  .font(.footnote)
                  
                  
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                //action button
                Button {
                
                } label: {
                    Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                }
               }
               Divider()
               //post grid here
               ScrollView(showsIndicators: false) {
                LazyVGrid(columns: gridItem, spacing: 1) {
                ForEach(0...19, id:\.self) {i in
                    Image("x")
                 .resizable()
                 .scaledToFill()
                 
                }
                }
               }
            }
            
            .navigationTitle(Text("Profile"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button {
                        withAnimation(.easeIn(duration: 0.2)) {
                             toggole = true
                        }
                   
                    } label: {
                        Image(systemName: "line.3.horizontal")
                        .foregroundColor(Color.black)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



struct SheetModifier: ViewModifier {
   @Binding var toggole: Bool
   @Namespace var animation
    func body(content: Content) -> some View {
       
            
                    ZStack(alignment: .bottom) {
                     content
                      Color.black.opacity(toggole ? 0.4 : 0)
                      
                      VStack {
                       Text("hello ")
                       .frame(maxWidth: .infinity, alignment: .center)
                       Spacer()
                      }.background(Color.white)
                      .frame(height: 250)
                      .matchedGeometryEffect(id: "pop", in: animation)
                      .offset(y: toggole ? 0 : 250)
                      
                      
                    }.ignoresSafeArea()
                        .onTapGesture {
                            toggole = false
                        }
                
            
    }

}
