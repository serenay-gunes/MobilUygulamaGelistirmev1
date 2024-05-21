//
//  MainView.swift
//  RedBullApp
//
//  Created by Serenay Güneş on 27.04.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem() {
                    Image(systemName: "waterbottle.fill")
                    Text("Icecekler")
                }
            AthleteView()
                .tabItem() {
                    Image(systemName: "figure.run")
                    Text("Atletler")
                }
            VideoView()
                .tabItem() {
                    Image(systemName: "video")
                    Text("Video")
                }
        }
    }
}

#Preview {
    MainView()
}
