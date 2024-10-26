//
//  TabModel.swift
//  FirVerse
//
//  Created by Георгий Борисов on 27.10.2024.
//

import Foundation

struct TabModel:Identifiable{
    private(set) var id : Tab
    var size:CGSize = .zero
    var minX:CGSize = .zero
    
    enum Tab:String , CaseIterable{
        case main = "Тренировки"
        case history = "История"
        case diet = "Диета"
        case money = "Версики"
    }
}
