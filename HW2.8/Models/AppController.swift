//
//  AppController.swift
//  HW2.8
//
//  Created by Irina Kopchenova on 22.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import Foundation

class AppController {
    static var shared = AppController()
    private var menuBySection = [String:[Dish]]()
    private var sectionById = [Int: String]()
    private var dishesInSection = [Int: Dish]()
    var basket = [Dish]()
    

    let dishes = Dish.getDishes()
    
    // Создаюем словарь из блюд с ключами по разделам меню
    func menu() -> [String:[Dish]] {
        for item in dishes {
            menuBySection[item.menuSection, default: []].append(item)
        }
        return menuBySection
    }
    
    // Создаем словарь из ключей по разделам
    func sectionsDic() -> [Int: String] {
        var index = 0
        let sectionDic = menu()
        for item in sectionDic {
            sectionById[index] = item.key
            index += 1
        }
        return sectionById
    }
    
    // Создаем словарь из блюд по конкретному разделу
    func dishesDic(sectionName: String) -> [Int: Dish] {
        guard let someDishes = menu()[sectionName] else { return [:] }
        var index = 0
        for item in someDishes {
            dishesInSection[index] = item
            index += 1
        }
        return dishesInSection
    }
    
    // Добавляем блюдо в корзину
    func appendDishesToBasket(someDishes: Dish) {
        basket.append(someDishes)
    }
}
