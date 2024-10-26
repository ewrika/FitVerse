//
//  MainTrain.swift
//  FirVerse
//
//  Created by Георгий Борисов on 27.10.2024.
//

import SwiftUI

struct MainTrain: View {
    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            VStack{
                VStack {
                    HStack {
                        
                        Button(action: {
                            withAnimation {

                            }
                        }) {
                            Image("slideMenu")
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("Жим Гири")
                                .font(.InterMedium20)
                                .foregroundStyle(.white)
                            Text("Тренировка")
                                .font(Font.custom("BRITANIC", size: 13))
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                        
                        
                        Button(action: {
                            withAnimation {
          
                            }
                        }) {
                            Image("gym")
                        }
                    }
                }.padding(.horizontal, 20)
                
                HStack{
                    VStack{
                        Text("120").font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Text("Пульс").font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                    }
                    Spacer()
                    VStack{
                        Text("340").font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Text("Калории").font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                    }
                }.padding(.horizontal,32)
                
                
                //
                Spacer()
                
                HStack{
                    VStack{
                        Text("50%").font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Text("Прогресс").font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                    }
                    Spacer()
                    VStack{
                        Text("10").font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Text("Повторений").font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                    }
                }.padding(.horizontal,32)
                
                Image("programm")
                    .padding(.bottom,10)
                    .padding(.top,10)
                
                OrangeButton(title: "Продолжить")
                
                
            }
        }
    }
}

#Preview {
    MainTrain()
}
