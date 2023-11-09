//
//  MainTabView.swift
//  Instagram
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
          FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
          Text("Search")
          .tabItem {
                    Image(systemName: "magnifyingglass")
                }
          Text("Upload Post")
          .tabItem {
                    Image(systemName: "plus.square")
                }
          Text("Notification")
          .tabItem {
                    Image(systemName: "heart")
                }
          ProfileView()
          .tabItem {
                    Image(systemName: "person")
                }
        }.accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
