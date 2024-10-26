//
//  ContentView.swift
//  FirVerse
//
//  Created by Георгий Борисов on 19.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int
    var body: some View {
        TabView(selection: $selectedTab) {
            MainScreen()
                .tabItem {
                    if selectedTab == 0 {
                        Image("gym")
                    } else {
                        Image("gymNo")
                    }
                    Text("Тренировки")
                        .accentColor(.red)
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color(hex:"#212121"),for: .tabBar)
                .tag(0)
            
            NewsView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Лента")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color(hex:"#212121"),for: .tabBar)
                .tag(1)
            
            PageInWork()
                .tabItem {
                    if selectedTab == 2{
                        Image(systemName: "person.fill")
                    }else{
                        Image(systemName: "person")
                    }
                    Text("Личный кабинет")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color(hex:"#212121"),for: .tabBar)
                .tag(2)
        }
        .tint(Color(hex:"#F56002"))
    }
}


#Preview {
    ContentView(selectedTab:0)
}
