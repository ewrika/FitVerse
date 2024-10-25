//
//  MainScreen.swift
//  FirVerse
//
//  Created by Георгий Борисов on 25.10.2024.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            VStack{
                TopBarMain(title: "Добро пожаловать!")
                
                //ScrollBar
                
                //
                
                VStack(alignment: .leading, spacing: 10){

                
                ViewPractic()
                
                }
                
                
                Spacer()
            }

                
        }
    }
}

#Preview {
    MainScreen()
}
