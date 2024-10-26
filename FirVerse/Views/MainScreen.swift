//
//  MainScreen.swift
//  FirVerse
//
//  Created by Георгий Борисов on 25.10.2024.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.BlackBackground
                    .ignoresSafeArea()
                VStack{
                    TopBarMain(title: "Добро пожаловать!")
                    
                    //ScrollBar
                    
                    //
                    
                    VStack(alignment: .leading, spacing: 10){
                        ScrollView{
                            VStack(alignment:.leading){
                                Text("График Тренировок")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(red: 0.96, green: 0.38, blue: 0.01))
                                    .fontWeight(.semibold)
                                
                                MyTraining()
                                    .padding(.bottom,10)
                                    ForEach(Trainings) { training in
                                        NavigationLink(destination:PreTraining(training: training)){

                                        ViewPractic(training: training)
                                    }.navigationBarHidden(true)
                                }
                            }
                        }.scrollIndicators(.hidden)
                    }
                    .padding(.horizontal,20)
                    
                    
                }
                
            }
        }.navigationBarHidden(true)
    }
}

#Preview {
    MainScreen()
}
