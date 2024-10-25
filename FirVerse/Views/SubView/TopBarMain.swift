//
//  TopBarMain.swift
//  FirVerse
//
//  Created by Георгий Борисов on 23.10.2024.
//

import SwiftUI

struct TopBarMain: View {
    var title:String
    var body: some View {
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
  
                    }
                }) {
                    Image("gym")
                }
            }
        }.padding(.horizontal, 32)
    }
}

#Preview {
    TopBarMain(title: "Добро пожаловать")
}
