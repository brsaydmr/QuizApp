//
//  SoruEkraniViewController.swift
//  quizAppDeneme
//
//  Created by Barış Aydemir on 14.08.2023.
//

import UIKit
import AVFoundation

class SoruEkraniViewController: UIViewController {
    @IBOutlet weak var soruSayacLabel: UILabel!
    
    @IBOutlet weak var dogruLabel: UILabel!
    
    @IBOutlet weak var yanlisLabel: UILabel!
    
    @IBOutlet weak var soruLabel: UILabel!
    
    @IBOutlet weak var buttonA: UIButton!
    
    @IBOutlet weak var buttonB: UIButton!
    
    @IBOutlet weak var buttonC: UIButton!
    
    @IBOutlet weak var buttonD: UIButton!
    
    var dogruSayac = 0
    var yanlisSayac = 0
    var soruSayac = 0
    var soruListesi = [Sorular]()
    var dogruCevap: String?
    var cevaplar: [String] = []
    var trueSound = AVAudioPlayer()
    var falseSound = AVAudioPlayer()
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        let Soru1 = Sorular(soru_id: 1, soru: "Mona Lisa tablosu hangi ünlü ressam tarafından yapılmıştır?", dogru_cevap: "Leonardo da Vinci", yanlis_cevaplar: ["Pablo Picasso", "Vincent van Gogh", "Michelangelo"])
        
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
        let Soru28 = Sorular(soru_id: 17, soru: "Hangi element tablosunda \"Ag\" sembolü ile gösterilir?", dogru_cevap: "Gümüş", yanlis_cevaplar: ["Altın", "Arsénik","Magnezyum"])
        let Soru29 = Sorular(soru_id: 29, soru: "Hangi ülke Amazon Ormanı'nın büyük bir bölümünü kapsar?", dogru_cevap: "Brezilya", yanlis_cevaplar: ["Kolombiya", "Peru", "Venezuela"])

        let Soru30 = Sorular(soru_id: 30, soru: "Kaç element periyodik tabloda bulunmaktadır?", dogru_cevap: "118", yanlis_cevaplar: ["92", "105", "136"])

        let Soru31 = Sorular(soru_id: 31, soru: "Hangi gezegen üzerinde en yüksek sıcaklık kaydedilmiştir?", dogru_cevap: "Venüs", yanlis_cevaplar: ["Merkür", "Mars", "Jüpiter"])

        let Soru32 = Sorular(soru_id: 32, soru: "Hangi ülke Eiffel Kulesi'ne ev sahipliği yapmaktadır?", dogru_cevap: "Fransa", yanlis_cevaplar: ["İtalya", "İspanya", "Almanya"])

        let Soru33 = Sorular(soru_id: 33, soru: "Hangi yazar '1984' ve 'Hayvan Çiftliği' gibi ünlü eserlerin yazarıdır?", dogru_cevap: "George Orwell", yanlis_cevaplar: ["Aldous Huxley", "F. Scott Fitzgerald", "J.K. Rowling"])

        let Soru34 = Sorular(soru_id: 34, soru: "Hangi ünlü bilim insanı, kütle-enerji denklemi olarak bilinen E=mc^2'yi formüle etmiştir?", dogru_cevap: "Albert Einstein", yanlis_cevaplar: ["Isaac Newton", "Stephen Hawking", "Niels Bohr"])

        let Soru35 = Sorular(soru_id: 35, soru: "Hangi ülke Ayn Rand'in 'Atlas Shrugged' adlı romanının yazarıdır?", dogru_cevap: "Amerika Birleşik Devletleri", yanlis_cevaplar: ["Rusya", "Almanya", "İngiltere"])

        let Soru36 = Sorular(soru_id: 36, soru: "Hangi renk, gökkuşağının başlangıcını temsil eder?", dogru_cevap: "Kırmızı", yanlis_cevaplar: ["Mavi", "Yeşil", "Mor"])

        let Soru37 = Sorular(soru_id: 37, soru: "Hangi ülke piramitlerle ünlüdür?", dogru_cevap: "Mısır", yanlis_cevaplar: ["Meksika", "Hindistan", "Peru"])

        let Soru38 = Sorular(soru_id: 38, soru: "Hangi element sembolü 'Fe' olarak gösterilir?", dogru_cevap: "Demir", yanlis_cevaplar: ["Fosfor", "Flor", "Fermiyum"])
        let Soru39 = Sorular(soru_id: 39, soru: "Hangi renk trafik ışığında 'dur' anlamına gelir?", dogru_cevap: "Kırmızı", yanlis_cevaplar: ["Yeşil", "Sarı", "Mavi"])

        let Soru40 = Sorular(soru_id: 40, soru: "Hangi meyve kabuğuyla yenir?", dogru_cevap: "Muz", yanlis_cevaplar: ["Portakal", "Üzüm", "Elma"])

        let Soru41 = Sorular(soru_id: 41, soru: "Hangi sayı 'iki' kelimesiyle ifade edilir?", dogru_cevap: "2", yanlis_cevaplar: ["5", "10", "7"])

        let Soru42 = Sorular(soru_id: 42, soru: "Hangi hayvan uçamaz?", dogru_cevap: "Köpek", yanlis_cevaplar: ["Kuş", "Yarasa", "Arı"])

        let Soru43 = Sorular(soru_id: 43, soru: "Hangi mevsimde kar yağar?", dogru_cevap: "Kış", yanlis_cevaplar: ["Yaz", "Sonbahar", "İlkbahar"])

        let Soru44 = Sorular(soru_id: 44, soru: "Hangi gezegen güneş sistemimizde en büyük gezegendir?", dogru_cevap: "Jüpiter", yanlis_cevaplar: ["Mars", "Venüs", "Satürn"])

        let Soru45 = Sorular(soru_id: 45, soru: "Hangi renk gökyüzünün rengidir?", dogru_cevap: "Mavi", yanlis_cevaplar: ["Yeşil", "Turuncu", "Siyah"])

        let Soru46 = Sorular(soru_id: 46, soru: "Hangi gezegen üzerinde insanlar yaşayamaz?", dogru_cevap: "Venüs", yanlis_cevaplar: ["Mars", "Jüpiter", "Ay"])

        let Soru47 = Sorular(soru_id: 47, soru: "Hangi aletle müzik yapılır?", dogru_cevap: "Piyano", yanlis_cevaplar: ["Çekirdek", "Çekiç", "Perde"])

        let Soru48 = Sorular(soru_id: 48, soru: "Hangi renk gül, aşkı temsil eder?", dogru_cevap: "Kırmızı", yanlis_cevaplar: ["Sarı", "Mavi", "Yeşil"])
        

        soruListesi.append(Soru1)
        soruListesi.append(Soru2)
        soruListesi.append(Soru3)
        soruListesi.append(Soru4)
        soruListesi.append(Soru5)
        soruListesi.append(Soru6)
        soruListesi.append(Soru7)
        soruListesi.append(Soru8)
        soruListesi.append(Soru9)
        soruListesi.append(Soru10)
        soruListesi.append(Soru11)
        soruListesi.append(Soru12)
        soruListesi.append(Soru13)
        soruListesi.append(Soru14)
        soruListesi.append(Soru15)
        soruListesi.append(Soru16)
        soruListesi.append(Soru17)
        soruListesi.append(Soru18)
        soruListesi.append(Soru19)
        soruListesi.append(Soru20)
        soruListesi.append(Soru21)
        soruListesi.append(Soru22)
        soruListesi.append(Soru23)
        soruListesi.append(Soru24)
        soruListesi.append(Soru25)
        soruListesi.append(Soru26)
        soruListesi.append(Soru27)
        soruListesi.append(Soru28)
        soruListesi.append(Soru29)
        soruListesi.append(Soru30)
        soruListesi.append(Soru31)
        soruListesi.append(Soru32)
        soruListesi.append(Soru33)
        soruListesi.append(Soru34)
        soruListesi.append(Soru35)
        soruListesi.append(Soru36)
        soruListesi.append(Soru37)
        soruListesi.append(Soru38)
        soruListesi.append(Soru39)
        soruListesi.append(Soru40)
        soruListesi.append(Soru41)
        soruListesi.append(Soru42)
        soruListesi.append(Soru43)
        soruListesi.append(Soru44)
        soruListesi.append(Soru45)
        soruListesi.append(Soru46)
        soruListesi.append(Soru47)
        soruListesi.append(Soru48)
        
        soruYukle()
        
        do{
            let dosyaYolu = Bundle.main.path(forResource: "true", ofType: ".mp3")
            trueSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            trueSound.prepareToPlay()
        }catch{
            print(error.localizedDescription)
        }
        do{
            let dosyaYolu = Bundle.main.path(forResource: "false", ofType: ".mp3")
            falseSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            falseSound.prepareToPlay()
        }catch{
            print(error.localizedDescription)
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gidilecekVC = segue.destination as! SonucVC
        gidilecekVC.dogruSayisi = dogruSayac
    }
    
    func soruYukle(){
        soruSayacLabel.text = "\(soruSayac+1). SORU"
        dogruLabel.text = "DOĞRU : \(dogruSayac)"
        yanlisLabel.text = "YANLIŞ \(yanlisSayac)"
        
        let randomIndex = Int.random(in: 0..<soruListesi.count)
        let randomSoru = soruListesi[randomIndex]
        dogruCevap = randomSoru.dogru_cevap
        
        var cevapSecenekleri = randomSoru.yanlis_cevaplar
        cevapSecenekleri?.append(randomSoru.dogru_cevap!)
        cevapSecenekleri?.shuffle()
        
        soruLabel.text = randomSoru.soru!

        buttonA.setTitle(cevapSecenekleri?[0], for: .normal)
        buttonB.setTitle(cevapSecenekleri?[1], for: .normal)
        buttonC.setTitle(cevapSecenekleri?[2], for: .normal)
        buttonD.setTitle(cevapSecenekleri?[3], for: .normal)
        
        cevaplar = cevapSecenekleri!
    }
    
    func dogruKontrol(button:UIButton){
        let buttonYazi = button.titleLabel?.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let dogru = dogruCevap

        
        print("Button Yazi : \(buttonYazi!)")
        print("Dogru Cevap : \(dogru!)")
        if dogru == buttonYazi {
           dogruSayac += 1
            trueSound.play()
       }else{
          yanlisSayac += 1
           falseSound.play()
        }
        dogruLabel.text = "Doğru : \(dogruSayac)"
        yanlisLabel.text = "Yanlış : \(yanlisSayac)"
        
        
       }
    func soruSayacKontrol(){
        soruSayac += 1
        
        if soruSayac != 5 {
            soruYukle()
        }else{
            performSegue(withIdentifier: "toSonucEkrani", sender: nil)
        }
    }

    @IBAction func buttonAaction(_ sender: Any) {
        dogruKontrol(button: buttonA)
        soruSayacKontrol()
    }
    
    @IBAction func buttonBaction(_ sender: Any) {
        dogruKontrol(button: buttonB)
        soruSayacKontrol()
    }
    
    @IBAction func buttonCaction(_ sender: Any) {
        dogruKontrol(button: buttonC)
        soruSayacKontrol()
    }
    
    @IBAction func buttonDaction(_ sender: Any) {
        dogruKontrol(button: buttonD)
        soruSayacKontrol()
    }
}
