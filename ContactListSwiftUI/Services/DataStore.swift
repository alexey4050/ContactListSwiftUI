//
//  DataStore.swift
//  ContactListSwiftUI
//
//  Created by testing on 27.12.2023.
//

import SwiftUI

class DataStore: ObservableObject {
    static let shared = DataStore()
    
    let firstNames = [
        "Алексей",
        "Мария",
        "Иван",
        "Елена",
        "Сергей",
        "Анна",
        "Дмитрий",
        "Ольга",
        "Андрей",
        "Ирина"
    ]
    let lastNames = [
        "Смирнов",
        "Иванова",
        "Петров",
        "Соколова",
        "Попов",
        "Новикова",
        "Морозов",
        "Волкова",
        "Алексеев",
        "Лебедева"
    ]
    let emails = [
        "aleksey@mail.ru",
        "maria@gmail.com",
        "ivan@yandex.ru",
        "elena@outlook.com",
        "sergey@icloud.com",
        "anna@protonmail.com",
        "dmitry@bing.com",
        "olga@zoho.com",
        "andrey@fastmail.com",
        "irina@tutanota.com"
    ]
    let phones = [
        "+7 900 111 22 33",
        "+7 900 222 33 44",
        "+7 900 333 44 55",
        "+7 900 444 55 66",
        "+7 900 555 66 77",
        "+7 900 666 77 88",
        "+7 900 777 88 99",
        "+7 900 888 99 00",
        "+7 900 999 00 11",
        "+7 900 000 11 22"
    ]
    private init() {}
}

