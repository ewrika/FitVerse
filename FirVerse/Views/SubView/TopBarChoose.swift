//
//  TopBarChoose.swift
//  FirVerse
//
//  Created by Георгий Борисов on 19.10.2024.
//

import SwiftUI

struct TopBarChoose: View {
    var title: String
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            HStack {
                
                Button(action: {
                    withAnimation {
                        if currentPage > 0 {
                            currentPage -= 1
                        }
                    }
                }) {
                    Image("arrow_left")
                }
                
                Spacer()
                
                VStack {
                    Text(title)
                        .font(.InterMedium20)
                        .foregroundStyle(.white)
                    Text("FitVerse")
                        .font(Font.custom("BRITANIC", size: 13))
                        .foregroundStyle(Color.FitOrange)
                }
                
                Spacer()
                
                
                Button(action: {
                    withAnimation {
                        if currentPage < 2 {
                            currentPage += 1
                        }
                    }
                }) {
                    Image("arrow_right")
                }
            }
        }
    }
}

#Preview {
    TopBarChoose(title: "Выбор пола", currentPage: .constant(0))
}

