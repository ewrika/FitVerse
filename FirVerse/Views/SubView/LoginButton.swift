//
//  LoginButton.swift
//  FirVerse
//
//  Created by Георгий Борисов on 19.10.2024.
//

import SwiftUI

struct LoginButton: View {
    
    var title:String
    var image:Image?
    var color:Color
    
    var body: some View {
        HStack{
            image
            Text(title)
                .font(.InterMedium18)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 0)
        .frame(width: 326, height: 48, alignment: .center)
        .background(Color(color))
        //.background(Color(red: 0.32, green: 0.51, blue: 0.69))

        .cornerRadius(14)

    }
}

#Preview {
    LoginButton(title: "Зайти Через ВК", image: Image("vk_logo"), color: Color(red: 0.32, green: 0.51, blue: 0.69))
}
