//
//  TimeSubPractic.swift
//  FirVerse
//
//  Created by Георгий Борисов on 25.10.2024.
//

import SwiftUI

struct TimeSubPractic: View {
    var time:Int

    var body: some View {
        HStack{
            HStack(spacing: 5) {
                Image(systemName: "clock.fill")
                    .foregroundColor(.green)
                Text("\(time) min")
            }
                .font(.system(size: 13))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.33, green: 0.78, blue: 0.19))
                .padding(.leading, 11)
                .padding(.trailing, 10)
                .padding(.vertical, 10)
                .background(Color(red: 0.95, green: 1, blue: 0.93))
                .cornerRadius(17)
                .overlay(
                    RoundedRectangle(cornerRadius: 17)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.35, green: 0.79, blue: 0.21), lineWidth: 1)
                )
            
        }
    }
}

#Preview {
    TimeSubPractic(time: 6)
}
