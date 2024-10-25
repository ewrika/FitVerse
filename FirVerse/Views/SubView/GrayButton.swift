//
//  GrayButton.swift
//  FirVerse
//
//  Created by Георгий Борисов on 23.10.2024.
//

import SwiftUI
struct GrayButton: View {
    var title: String
    @Binding var isSelected: Bool  

    var body: some View {
        VStack {
            Text(title)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .padding(.horizontal, 21)
                .padding(.vertical, 14)
                .frame(maxWidth: .infinity, minHeight: 104, maxHeight: 104, alignment: .leading)
                .background(Color(red: 0.18, green: 0.18, blue: 0.18))
                .cornerRadius(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .inset(by: 0.5)
                        .stroke(isSelected ? Color(red: 0.96, green: 0.38, blue: 0.01) : Color.clear, lineWidth: 1)
                )
        }
        .onTapGesture {
            isSelected.toggle()
        }
    }
}

#Preview {
    GrayButton(title: "Похудение", isSelected: .constant(false))
}
