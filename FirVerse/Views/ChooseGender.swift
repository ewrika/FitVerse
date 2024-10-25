//
//  ChooseGender.swift
//  FirVerse
//
//  Created by Георгий Борисов on 19.10.2024.
//

import SwiftUI

struct ChooseGender: View {
    @State private var isSelected = false

    @State private var selectedPage = 0
    @State private var selectedGender = ""
    @State private var selectedVes = 50
    @State private var selectedHeight = 170
    @State private var selectedOld = 30
    @State private var selectedButtons = [false, false, false, false] // Массив для отслеживания состояния кнопок

    var body: some View {
        ZStack{
            Color.BlackBackground
                .ignoresSafeArea()
            VStack{
                TopBarChoose(title: "Выбор пола",currentPage: $selectedPage)
                    .padding(.bottom, 10)
                
                TabView(selection: $selectedPage) {
                    
                    VStack{
                        VStack{
                            if selectedGender == "man" {
                                Image("man_button")
                            } else {
                                Image("man_buttonNo")
                            }
                        }
                        .onTapGesture {
                            withAnimation {
                                selectedGender = "man"
                            }
                        }
                        
                        VStack {
                            if selectedGender == "woman" {
                                Image("woman_button")
                            } else {
                                Image("woman_buttonNo")
                            }
                        }
                        .onTapGesture {
                            withAnimation {
                                selectedGender = "woman"
                            }
                        }
                        
                        Spacer()
                    }
                    .tag(0)
                    
                    VStack {
                        Text("Для интеллектуального подбора весов просим указать следующие данные:")
                            .font(.InterMedium15)
                            .foregroundStyle(.white)
                            .fontWeight(.medium)
                            .frame(width: 330, alignment: .topLeading)
                            .padding(10)
                        
                        VStack {
                            Text("Ваш Вес:")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                            Picker("", selection: $selectedVes) {
                                ForEach(0...200, id: \.self) { value in
                                    HStack {
                                        Text("\(value)")
                                            .tag(value)
                                        Text("Кг")
                                    }
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                }
                            }
                            .pickerStyle(.wheel)
                        }
                        .padding(14)
                        .frame(width: 318, height: 104, alignment: .top)
                        .background(Color(red: 0.18, green: 0.18, blue: 0.18))
                        .cornerRadius(17)
                        .padding(.bottom, 10)
                        
                        VStack{
                            Text("Ваш рост:")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)

                                
                                Picker("",selection: $selectedHeight){
                                    ForEach(0...200 , id: \.self) { value in
                                        HStack{
                                            Text("\(value)")
                                                .tag(value)
                                            Text("См")
                                        }   .foregroundColor(.white)
                                            .fontWeight(.bold)
                                    }
                                }.pickerStyle(.wheel)
                            }
                        .padding(14)
                        .frame(width: 318, height: 104, alignment: .top)
                        .background(Color(red: 0.18, green: 0.18, blue: 0.18))
                        .cornerRadius(17)
                        .padding(.bottom,10)

                        
                        VStack{
                            Text("Ваш Возраст:")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)

                                
                                Picker("",selection: $selectedOld){
                                    ForEach(0...100 , id: \.self) { value in
                                        HStack{
                                            Text("\(value)")
                                                .tag(value)
                                            Text("Лет")
                                        }   .foregroundColor(.white)
                                            .fontWeight(.bold)
                                    }
                                }.pickerStyle(.wheel)
                            }
                        .padding(14)
                        .frame(width: 318, height: 104, alignment: .top)
                        .background(Color(red: 0.18, green: 0.18, blue: 0.18))
                        .cornerRadius(17)
                        .padding(.bottom,10)
                        
                        Spacer()
                    }
                    .tag(1)
                    
                    VStack {
                        VStack {
                            ForEach(0..<selectedButtons.count, id: \.self) { index in
                                GrayButton(title: buttonTitle(for: index), isSelected: $selectedButtons[index])
                            }
                        }
                        Spacer()
                    }
                    .tag(2)
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                OrangeButton(title: "Продолжить")
                .onTapGesture {
                    withAnimation {
                        if selectedPage < 2 {
                            selectedPage += 1
                        }
                    }
                }
            }
            .padding(.leading, 32)
            .padding(.trailing, 32)
        }
    }
}

#Preview {
    ChooseGender()
}

private func buttonTitle(for index: Int) -> String {
    switch index {
    case 0: return "Похудение"
    case 1: return "Рельефное тело"
    case 2: return "Красивые ягодицы"
    case 3: return "Красивый пресс"
    default: return ""
    }
}

