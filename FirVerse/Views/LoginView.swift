//
//  LoginView.swift
//  FirVerse
//
//  Created by Георгий Борисов on 19.10.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            VStack{
                Image("fitness_logo")
                Spacer()
                
                VStack{
                    
                    
                    LoginButton(title: "Зайти через ВК", image: Image("vk_logo"), color: Color(red: 0.32, green: 0.51, blue: 0.69))
                    LoginButton(title: "Зайти через Google", image: Image("google_logo"), color: Color(red: 0.28, green: 0.54, blue: 0.96))
                    LoginButton(title: "Зайти через AppleID", image: Image("apple_logo"), color: Color(red: 0.22, green: 0.22, blue: 0.22))
                    LoginButton(title: "Вход/Регистрация по E-mail", color: Color(red: 0.96, green: 0.38, blue: 0.01))
                    
                    
                }
                
                Spacer()
                
                VStack(spacing:20){
                    
                    Text("Продолжить без регистрации")
                        .font(.InterMedium18)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                        .frame(width: 326, height: 48, alignment: .center)
                        .cornerRadius(14)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(.white, lineWidth: 1)
                        )
                    
                    Text("Продолжая использовать FitVerse, вы принимаете \nПользовательское соглашение и Политику\nконфиденциальности")
                        .font(.InterMedium12)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                }
                
                Text("Сотрудничество")
                
                  .font(Font.custom("Inter", size: 12))
                  .underline()
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white)
                  .padding(.top,7)

            }
                .padding(.top,20)
                .padding(.leading,32)
                .padding(.trailing,32)
                .padding(.bottom,20)
            
        }
    }
}

#Preview {
    LoginView()
}
