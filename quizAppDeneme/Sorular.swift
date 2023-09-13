//
//  Sorular.swift
//  quizAppDeneme
//
//  Created by Barış Aydemir on 14.08.2023.
//

import Foundation

class Sorular {
    var soru_id:Int?
    var soru:String?
    var dogru_cevap:String?
    var yanlis_cevaplar:[String]?
    
    init(soru_id: Int, soru: String, dogru_cevap: String, yanlis_cevaplar: [String]) {
        self.soru_id = soru_id
        self.soru = soru
        self.dogru_cevap = dogru_cevap
        self.yanlis_cevaplar = yanlis_cevaplar
    }
    
    init() {
        
    }
    
}
