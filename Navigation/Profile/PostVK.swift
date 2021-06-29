//
//  PostVk.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 28.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

struct PostVk {
    
    let autor: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
    
}

struct PostSection {
    let post: [PostVk]
}

struct Section {
    static let publication = [
       PostSection(post: [
        PostVk(autor: "Discovery", description: "Фотография внутри колец планеты Сатурн, которую сделал космический корабль Кассини.", image: "discovery", likes: 185, views: 534),
        PostVk(autor: "KinoPoisk", description: "\"Рик и Морти\" вернулись в духе ранних сезонов - без чрезмерных метазаигрываний и прочих очень странны дел! Но КиноПоиск HD стартовал пятый сезон мультсериала. " , image: "kinopoisk", likes: 300, views: 735),
        PostVk(autor: "Fitness House", description: "Занимайся фитнесом с конфортом! В Fitness House ты: не сорвешь спину (тренер подскажет подходящий вид нагрузки, не получишь \"крестьянский\" загар по футболке (ты же знаешь, что у нас есть солярий) и не замерзнешь в холодной речке!", image: "fitness", likes: 215, views: 467),
        PostVk(autor: "Интересные сщбытия в Санкт-Петербурге", description: "В Петербурге состоится джазовый концерт Easy Winners. В ресторане Noisy River выступит местный коллектив, исполняющий исключительно архаичные джазовые композиции с помощью необычных предметов, среди которых стиральная доска и казу" , image: "spb", likes: 800, views: 954)
       ])
    ]
}
