//
//  ModelController.swift
//  HW2.8
//
//  Created by Dmitriy Butin on 22.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import Foundation

struct Dish {
    let menuSection: String
    let dishName: String
    let dishCost: Float
    let dishImageName: String
    let dishDescription: String
}

extension Dish {
    static func getDishes() -> [Dish] {
        let dishes = [
            Dish(menuSection: "Роллы", dishName: "Филадельфия",
                 dishCost: 390, dishImageName: "Филадельфия",
                 dishDescription: "Лосось, огурец, сливочный сыр, тобико, зеленый лук, васаби (6 шт.)"),
            Dish(menuSection: "Роллы", dishName: "Калифорния",
                 dishCost: 350, dishImageName: "Калифорния",
                 dishDescription: "Мясо краба, огурец, авокадо, тобико, васаби (6 шт.)"),
            Dish(menuSection: "Роллы", dishName: "Унаги-маки",
                 dishCost: 290, dishImageName: "УнагиМаки",
                 dishDescription: "С копченым угрем, авокадо, сыром филадельфия и икрой тобико (6 шт.)."),
            Dish(menuSection: "Горячее", dishName: "Шашлык с из окуня",
                 dishCost: 490, dishImageName: "ШашлыкИзОкуня",
                 dishDescription: "Вкуснейший шашлык из морского окуня на шпажках, подается с гарниром."),
            Dish(menuSection: "Горячее", dishName: "Стейк из лосося",
                 dishCost: 790, dishImageName: "СтейкИзЛосося",
                 dishDescription: "Нежное филе норвежского лосося обжаренное на гриле, подается с овощами."),
            Dish(menuSection: "Горячее", dishName: "Утка по-японски",
                 dishCost: 990, dishImageName: "УткаПоЯпонски",
                 dishDescription: "Ломтики утки в кисло-сладком соусе для изысканных гурманов."),
            Dish(menuSection: "Десерт", dishName: "Чизкейк",
                 dishCost: 330, dishImageName: "Чизкейк",
                 dishDescription: "Сырный пирог от шэф-повара.")
        ]
        
        return dishes
    }
}
