//
//  NewsModel.swift
//  FirVerse
//
//  Created by Георгий Борисов on 26.10.2024.
//

import Foundation
import SwiftUI



struct news:Identifiable{
    var id = UUID()
    var photo : Image
    var title : String
    var time : TimeInterval
    var money: Int
}


var News = [
news(photo: Image("practic"), title: "О Спорте", time: 2, money: 3),
news(photo: Image("practic"), title: "Олимпиада", time: 3, money: 3),
news(photo: Image("practic"), title: "О Спортпите", time: 4, money: 3),
news(photo: Image("practic"), title: "О Тренажерном зале", time: 5, money: 3)
]
