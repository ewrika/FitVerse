//
//  CalSubPractic.swift
//  FirVerse
//
//  Created by Георгий Борисов on 25.10.2024.
//

import SwiftUI

struct CalSubPractic: View {
    var cal:Int
    var body: some View {
        HStack{
            HStack(spacing: 5) {
                Image(systemName: "flame")
                Text("\(cal) cal").fontWeight(.medium)

            }.foregroundColor(Color(red: 1, green: 0.71, blue: 0))

                .font(.system(size: 13))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.leading, 11)
                .padding(.trailing, 10)
                .padding(.vertical, 10)
                .background(Color(red: 1, green: 0.98, blue: 0.93))
                .cornerRadius(17)
                .overlay(
                    RoundedRectangle(cornerRadius: 17)
                        .inset(by: 0.5)
                        .stroke(Color(red: 1, green: 0.84, blue: 0.46), lineWidth: 1)
                )
            
        }.padding(.leading, 9)
            .padding(.trailing, 8)
            .padding(.vertical, 10)
    }
}

#Preview {
    CalSubPractic(cal: 170)
}
