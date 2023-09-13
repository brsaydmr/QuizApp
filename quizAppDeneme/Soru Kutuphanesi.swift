//
//  Soru Kutuphanesi.swift
//  quizAppDeneme
//
//  Created by Barış Aydemir on 14.08.2023.
//

import Foundation

class SoruKutuphanesi:Sorular {
    
    let soru1 = Sorular(soru_id: 1, soru: "Mona Lisa tablosu hangi ünlü ressam tarafından yapılmıştır?", dogru_cevap: "Leonardo da Vinci", yanlis_cevaplar: ["Pablo Picasso", "Vincent van Gogh", "Michelangelo"])
    
    let Soru2 = Sorular(soru_id: 1, soru: "Bir üçgenin iç açılarının toplamı kaç derecedir?", dogru_cevap: "180 derece", yanlis_cevaplar: ["90 derece", "270 derece", "360 derece"])
    let Soru3 = Sorular(soru_id: 2, soru: "Hangi sayı 0 ile 1 arasında yer alır ve rasyonel değildir?", dogru_cevap: "π (Pi)", yanlis_cevaplar: ["0.5", "0.75", "0.25"])
    let Soru4 = Sorular(soru_id: 3, soru: "Bir çemberin çevresi nasıl hesaplanır?", dogru_cevap: "Çevre = 2 * π * Yarıçap", yanlis_cevaplar: ["Çevre = π * Yarıçap", "Çevre = Yarıçap^2", "Çevre = π^2 * Yarıçap"])
    let Soru5 = Sorular(soru_id: 4, soru: "Bir dik üçgenin hipotenüsünü bulmak için hangi teoremi kullanırız?", dogru_cevap: "Pisagor Teoremi", yanlis_cevaplar: ["Eşlik Teoremi", "Kenar-kenar-kenar Benzerlik", "Açıortay Teoremi"])
    let Soru6 = Sorular(soru_id: 5, soru: "Bir sayının yüzde kaçı, ondalık olarak ifade edilir?", dogru_cevap: "Yüzde 100", yanlis_cevaplar: ["Yüzde 50", "Yüzde 10", "Yüzde 25"])
    let Soru7 = Sorular(soru_id: 6, soru: "Hangi sayılar asal sayılardır: 3, 6, 11, 15?", dogru_cevap: "3 ve 11", yanlis_cevaplar: ["6 ve 15", "3 ve 15", "6 ve 11"])
    let Soru8 = Sorular(soru_id: 7, soru: "Bir karenin alanını hesaplamak için kenar uzunluğunun karesi nasıl kullanılır?", dogru_cevap: "Alan = Kenar Uzunluğu^2", yanlis_cevaplar: ["Alan = 2 * Kenar Uzunluğu", "Alan = Kenar Uzunluğu / 2", "Alan = 3 * Kenar Uzunluğu"])
    let Soru9 = Sorular(soru_id: 8, soru: "24 ve 40 sayılarının en büyük ortak böleni (OBEB) nedir?", dogru_cevap: "8", yanlis_cevaplar: ["4", "12", "16"])
    let Soru10 = Sorular(soru_id: 9, soru: "Hangi matematiksel işlemde bölme önce yapılır?", dogru_cevap: "Parantez içi işlemler", yanlis_cevaplar: ["Çarpma", "Toplama", "Çıkarma"])
    let Soru11 = Sorular(soru_id: 10, soru: "Bir saatte 55 km hızla giden bir araç, kaç saatte 220 km yol alır?", dogru_cevap: "4 saat", yanlis_cevaplar: ["3 saat", "2 saat", "5 saat"])
    
    let Soru12 = Sorular(soru_id: 1, soru: "\"The Persistence of Memory\" tablosu hangi ünlü ressam tarafından yapılmıştır?", dogru_cevap: "Salvador Dali", yanlis_cevaplar: ["Jackson Pollock", "Pablo Picasso", "Vincent van Gogh"])
    
    let Soru13 = Sorular(soru_id: 2, soru: "Hangi ünlü sanat akımı, renklerin ve ışığın duygusal etkilerini vurgular?", dogru_cevap: "İzlenimcilik", yanlis_cevaplar: ["Sürrealizm", "Kübizm", "Pop Art"])
    
    let Soru14 = Sorular(soru_id: 3, soru: "\"The Starry Night\" tablosunda hangi gök cisimleri görülmektedir?", dogru_cevap: "Yıldızlar ve Ay", yanlis_cevaplar: ["Güneş ve Ay", "Gezegenler", "Uydular"])
    
    let Soru15 = Sorular(soru_id: 4, soru: "Hangi ünlü ressam, \"Les Demoiselles d'Avignon\" adlı tabloyla bilinir?", dogru_cevap: "Pablo Picasso", yanlis_cevaplar: ["Leonardo da Vinci", "Vincent van Gogh", "Claude Monet"])
    
    let Soru16 = Sorular(soru_id: 5, soru: "Hangi ressam, \"Campbell's Soup Cans\" serisiyle ünlüdür?", dogru_cevap: "Andy Warhol", yanlis_cevaplar: ["Jackson Pollock", "Henri Matisse", "Wassily Kandinsky"])
    
    let Soru17 = Sorular(soru_id: 6, soru: "Hangi antik kent, Roma İmparatorluğu'nun başkenti olarak bilinir?", dogru_cevap: "Roma", yanlis_cevaplar: ["Atina", "Mısır", "Babil"])
    
    let Soru18 = Sorular(soru_id: 7, soru: "Hangi dinin kutsal kitabı \"Torah\" olarak adlandırılır?", dogru_cevap: "Yahudilik", yanlis_cevaplar: ["Hristiyanlık", "İslam", "Budizm"])
    
    let Soru19 = Sorular(soru_id: 8, soru: "Hangi ünlü yazar \"1984\" ve \"Hayvan Çiftliği\" gibi eserleriyle tanınır?", dogru_cevap: "George Orwell", yanlis_cevaplar: ["J.R.R. Tolkien", "Ernest Hemingway", "F. Scott Fitzgerald"])
    
    let Soru20 = Sorular(soru_id: 9, soru: "Hangi ülkenin mutfağı \"kimchi\" ve \"bulgogi\" gibi yemeklerle ünlüdür?", dogru_cevap: "Güney Kore", yanlis_cevaplar: ["Japonya", "Çin", "Tayland"])
    
    let Soru21 = Sorular(soru_id: 10, soru: "Hangi kıtanın yerli halkı Maori olarak bilinir?", dogru_cevap: "Okyanusya (Avustralya ve Yeni Zelanda)", yanlis_cevaplar: ["Afrika", "Asya", "Amerika"])
    
    let Soru22 = Sorular(soru_id: 11, soru: "Hangi spor dalında \"slam dunk\" terimi kullanılır?", dogru_cevap: "Basketbol", yanlis_cevaplar: ["Futbol", "Tenis", "Voleybol"])
    
    let Soru23 = Sorular(soru_id: 12, soru: "Hangi oyunun temel amacı, rakibin kralını mat etmektir?", dogru_cevap: "Satranç", yanlis_cevaplar: ["Monopoly", "Poker", "Bingo"])
    
    let Soru24 = Sorular(soru_id: 13, soru: "Hangi spor dalında \"par\" ve \"bogey\" terimleri kullanılır?", dogru_cevap: "Golf", yanlis_cevaplar: ["Futbol", "Basketbol", "Tenis"])
    
    let Soru25 = Sorular(soru_id: 14, soru: "Hangi ünlü yüzücü, 9 altın madalya kazanarak Olimpiyat tarihindeki en fazla altın madalyaya sahip sporcu oldu?", dogru_cevap: "Michael Phelps", yanlis_cevaplar: ["Usain Bolt", "Simone Biles", "Nadia Comăneci"])
    
    let Soru26 = Sorular(soru_id: 15, soru: "Hangi ülke, futbolun kökeni olarak kabul edilir?", dogru_cevap: "İngiltere", yanlis_cevaplar: ["İtalya", "Brezilya", "Fransa"])
    
    let Soru27 = Sorular(soru_id: 16, soru: "Hangi gezegen Güneş Sistemi'nde en büyük çaplı gezegen olarak bilinir?", dogru_cevap: "Jüpiter", yanlis_cevaplar: ["Mars", "Venüs", "Neptün"])
    
    let Soru28 = Sorular(soru_id: 17, soru: "Hangi element tablosunda \"Ag\" sembolü ile gösterilir?", dogru_cevap: "Gümüş", yanlis_cevaplar: ["Altın", "Arsénik"])
    
}
