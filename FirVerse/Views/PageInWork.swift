//
//  PageInWork.swift
//  FirVerse
//
//  Created by Георгий Борисов on 26.10.2024.
//

import SwiftUI

struct PageInWork: View {
    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            
            VStack{
                
                Text("Страница в разработке")
                    .foregroundStyle(.white)
                
            }
            
        }
    }
}

#Preview {
    PageInWork()
}
