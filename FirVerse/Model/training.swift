//
//  training.swift
//  FirVerse
//
//  Created by Георгий Борисов on 25.10.2024.
//

import Foundation
import SwiftUI


struct training:Identifiable{
    var id = UUID()
    var photo : Image
    var title : String
    var time : TimeInterval
    var calories: Int
    var money: Int
}

var Trainings = [
training(photo: Image("practic"), title: "День Ног", time: 60, calories: 170, money: 15),
training(photo: Image("practic"), title: "День Рук", time: 60, calories: 130, money: 15),
training(photo: Image("practic"), title: "Ягодицы", time: 60, calories: 150, money: 15),
training(photo: Image("practic"), title: "Пресс", time: 60, calories: 160, money: 15)
]
