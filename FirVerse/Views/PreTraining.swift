//
//  PreTraining.swift
//  FirVerse
//
//  Created by Георгий Борисов on 26.10.2024.
//

import SwiftUI

struct PreTraining: View {
    let training: training  // Принимаем объект training

    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            
            
            VStack{
                
                TopBarMain(title: "Тренировка")
                
                VStack(alignment: .center, spacing: 10) {
                    training.photo
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, minHeight: 169, maxHeight: 169)
                        .clipped()
                        .padding(.top,15)
                    
                    HStack {
                        Text(training.title)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .padding(.leading, 15)
                        
                        Spacer()
                        
                        TimeSubPractic(time: Int(training.time))
                        CalSubPractic(cal: training.calories)
                    }
                    .frame(maxWidth: .infinity, minHeight: 40, alignment: .leading)
                    .padding(.bottom, 10)
                    .background(Color(red: 0.18, green: 0.18, blue: 0.18))
                    .cornerRadius(16, corners: [.bottomLeft, .bottomRight])
                    .offset(y: -15)
                }
                
                VStack(alignment:.leading){
                    
                    Image("programm")
                    
                    
                    Text("Версиков")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.bottom,10)
                    
                    Text("Вы получите:")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.bottom,15)
                    
                    HStack{
                        Image("star3")
                        Text("15")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        Text("Версиков")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)

                    }
                }
                
                Spacer()

                
                OrangeButton(title: "Начать тренировку")
                    

            }.navigationBarBackButtonHidden(true)
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PreTraining(training: training(photo: Image("practic"), title: "День Ног", time: 60, calories: 170, money: 15))
}
