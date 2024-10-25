//
//  EmailPasswordView.swift
//  FirVerse
//
//  Created by Георгий Борисов on 19.10.2024.
//

import SwiftUI

struct EmailPasswordView: View {
    
    @State private var Email = ""
    @State private var Password = ""
    
    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            
            VStack{
                
                HStack(alignment:.top){
                    
                    Image("arrow_left")
                        .padding(.trailing,42)
                    Image("fitness_logo")
                    Spacer()
                    
                }
                
                Spacer()
                
                VStack(alignment:.leading){
                    
                    Spacer()
                    
                    Text("E-Mail")
                        .font(.InterMedium10)
                        .foregroundStyle(.white)
                    
                    TextField("", text: $Email)
                        .keyboardType(.emailAddress)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                        .background(.white.opacity(0.05))
                        .cornerRadius(14)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(.white, lineWidth: 1)
                        )
                    
                    Text("Пароль")
                        .font(.InterMedium10)
                        .foregroundStyle(.white)
                    
                    SecureField("", text: $Password)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
                        .background(.white.opacity(0.05))
                        .cornerRadius(14)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.5)
                                .stroke(.white, lineWidth: 1))
                    
                    Spacer()
                    
                    Image("star")
                        .offset(x:-20)
                        .offset(y:10)
                    Spacer()
                    
                }
                VStack{
                    
                    
                    OrangeButton(title: "Войти")
                    
                    VStack(spacing:20){
                    
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
                
                Spacer()
                
            }
            
            .padding(.top,20)
            .padding(.leading,32)
            .padding(.trailing,32)
            .padding(.bottom,20)
            
        }
    }
}

#Preview {
    EmailPasswordView()
}
