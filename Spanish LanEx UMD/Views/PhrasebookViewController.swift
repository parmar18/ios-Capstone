//
//  PhrasebookViewController.swift
//  Spanish LanEx UMD
//
//  Created by Sid Parmar on 11/13/23.
//

import UIKit

class PhrasebookViewController: UIViewController{
    
    struct Phrase {
        let spanish: String
        let english: String
    }

    var phrases: [Phrase] = [
        Phrase(spanish: "Buenos días", english: "Good morning"),
        Phrase(spanish: "Buenas noches", english: "Good night"),
        Phrase(spanish: "¿Cómo estás?", english: "How are you?"),
        Phrase(spanish: "Estoy bien", english: "I'm fine"),
        Phrase(spanish: "Por favor", english: "Please"),
        Phrase(spanish: "Gracias", english: "Thank you"),
        Phrase(spanish: "Lo siento", english: "I'm sorry"),
        Phrase(spanish: "¿Dónde está el baño?", english: "Where is the bathroom?"),
        Phrase(spanish: "Me llamo...", english: "My name is..."),
        Phrase(spanish: "Hasta luego", english: "See you later")
    ] // This should be categorized

    @IBOutlet weak var spanishLabel: UILabel!
    @IBOutlet weak var englishLabel: UILabel!

       
       var currentPhraseIndex = 0

       override func viewDidLoad() {
           super.viewDidLoad()
           loadPhrase()
       }

       func loadPhrase() {
           guard currentPhraseIndex < phrases.count else { return }
           let phrase = phrases[currentPhraseIndex]
           spanishLabel.text = phrase.spanish
           englishLabel.text = phrase.english
       }

       @IBAction func nextButtonTapped(_ sender: UIButton) {
           currentPhraseIndex += 1
           if currentPhraseIndex >= phrases.count {
               currentPhraseIndex = 0 // Restart from the beginning or handle completion
           }
           loadPhrase()
       }
   }
