//
//  OrangeButton.swift
//  FirVerse
//
//  Created by Георгий Борисов on 19.10.2024.
//

import SwiftUI

struct OrangeButton: View {
    var title:String
    var body: some View {
        
        VStack{
            Text(title)
                .foregroundStyle(.white)
                .font(.InterMedium18)
                .fontWeight(.medium)
                .frame(width: 326, height: 48, alignment: .center)
                .background(Color(red: 0.96, green: 0.38, blue: 0.01))
                .cornerRadius(14)
                .padding(.bottom,20)
        }
    }
}

#Preview {
    OrangeButton(title: "String")
}
