//
//  MyTraining.swift
//  FirVerse
//
//  Created by Георгий Борисов on 26.10.2024.
//

import SwiftUI

struct MyTraining: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment:.leading){
                    Text("Моя тренировка")
                    .foregroundColor(.white)
                    .font(.system(size:21))
                    .fontWeight(.semibold)
                    
                    Text("Выполнено занятий: 0")
                        .font(.system(size:13))
                        .fontWeight(.semibold)
                     
                      .foregroundColor(.white)
                    
                }
                Spacer()
                Image("star2")
                    .frame(width: 124, height: 93)

            }
        }.padding(.horizontal, 21)
            .padding(.vertical, 14)
            .frame(maxWidth: .infinity, minHeight: 131, maxHeight: 131, alignment: .leading)
            .background(Color(red: 0.18, green: 0.18, blue: 0.18))
            .cornerRadius(16)
    }
}

#Preview {
    MyTraining()
}
