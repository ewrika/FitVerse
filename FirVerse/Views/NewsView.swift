//
//  NewsView.swift
//  FirVerse
//
//  Created by Георгий Борисов on 26.10.2024.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            VStack{
                TopBarMain(title: "Новости")
                    .padding(.bottom,10)
                ScrollView{
                    ForEach(News) { news in
                        NewsLenta(News: news)
                        
                    }
                }.scrollIndicators(.hidden)
                    .padding(.horizontal,20)
                
            }
            
        }
    }
}

#Preview {
    NewsView()
}
