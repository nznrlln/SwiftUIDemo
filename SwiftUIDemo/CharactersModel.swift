//
//  CharactersModel.swift
//  SwiftUIDemo
//
//  Created by Нияз Нуруллин on 16.11.2022.
//

import Foundation

struct CharacterModel: Identifiable {
    var id: String {
        name
    }
    
    var name: String
    var origin: String
    var imageName: String
    var description: String

    static func makeModel() -> [CharacterModel]{
        var array: [CharacterModel] = []
        array.append(CharacterModel(name: "Batman", origin: "DC Universe", imageName: "Batman", description: "Бэ́тмен, изначально Бэт-мен — супергерой, персонаж комиксов издательства DC Comics, впервые появившийся в Detective Comics № 27 в мае 1939 года, Бэтмен является одним из самых популярных и известных героев комиксов. Был создан художником Бобом Кейном в соавторстве с писателем Биллом Фингером."))
        array.append(CharacterModel(name: "Joker", origin: "DC Universe", imageName: "Joker", description: "Джо́кер — суперзлодей вселенной DC Comics, главный и заклятый враг Бэтмена. Джокер носит фиолетовый костюм и сражается при помощи предметов, которые стилизованы под реквизит клоуна."))
        array.append(CharacterModel(name: "Spider-Man", origin: "Marvel Universe", imageName: "Spider-Man", description: "Челове́к-пау́к, настоящее имя Пи́тер Бе́нджамин Па́ркер — супергерой, появляющийся в комиксах издательства Marvel Comics, созданный Стэном Ли и Стивом Дитко. С момента своего первого появления на страницах комикса Amazing Fantasy № 15 он стал одним из самых популярных супергероев."))
        array.append(CharacterModel(name: "Kratos", origin: "GOW Series", imageName: "Kratos", description: "Кратос — протагонист серии игр God of War, разработанных американской компанией Santa Monica Studio. Помимо игр этой серии, Кратос появляется в основанных на них комиксах и книгах, а также — в виде камео — в ряде других игр."))
        array.append(CharacterModel(name: "Narrator", origin: "Fight Club", imageName: "Narrator", description: "Переведено с английского языка.-Рассказчик - вымышленный персонаж и главный антагонист, выступающий в качестве центральной фигуры романа Чака Паланика 1996 года « Бойцовский клуб» , его одноименной экранизации 1999 года и комиксов « Бойцовский клуб 2» и « Бойцовский клуб 3» . "))
        array.append(CharacterModel(name: "Mario", origin: "Nintedo", imageName: "Mario", description: "Ма́рио - ерсонаж видеоигр компании Nintendo, созданный Сигэру Миямото. Являясь талисманом Nintendo и основным героем серии, Марио появился в более чем 200 видеоиграх с момента своего создания. Впервые появился в игре для игрового автомата Donkey Kong 1981 года под изначальным именем Прыгун (англ. Jumpman), и был он тогда не водопроводчиком, а плотником[3]. "))
        array.append(CharacterModel(name: "Severus Snape", origin: "Harry Potter", imageName: "Severus Snape", description: "Се́верус Снегг — персонаж серии книг Дж. К. Роулинг о Гарри Поттере. Преподаватель зельеварения и защиты от Тёмных искусств в школе чародейства и волшебства «Хогвартс», декан факультета Слизерин в 1981—1997, директор Хогвартса в 1997—1998. Пожиратель Смерти и член Ордена Феникса одновременно, двойной агент."))
        array.append(CharacterModel(name: "Доктор Ливси", origin: "Остров Сокровищ", imageName: "Dr Livesey", description: "Доктор Дэвид Ливси — один из главных действующих персонажей романа Роберта Льюиса Стивенсона «Остров сокровищ». Также является персонажем многочисленных фильмов, снятых на основе романа."))
        array.append(CharacterModel(name: "Master Chief", origin: "Halo Series", imageName: "Master Chief", description: "Мастер чиф-петти-офицер Джон-117, более известный просто как Ма́стер Чи́ф — вымышленный персонаж, главный герой серии компьютерных игр Halo. Мастер Чиф — играбельный персонаж игр Halo: Combat Evolved, Halo 2, Halo 3, Halo 4, Halo 5: Guardians и Halo Infinite."))
        array.append(CharacterModel(name: "Scrat", origin: "Ice Age", imageName: "Scrat", description: "Скрат — персонаж серии полнометражных анимационных фильмов «Ледниковый период» студии Blue Sky Studios, «саблезубая крысобелка» мужского пола, одержимая страстью к желудям."))

        return array
    }
}
