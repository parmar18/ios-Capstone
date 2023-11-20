//
//  VocabularyViewController.swift
//  Spanish LanEx UMD
//
//  Created by Sid Parmar on 11/13/23.
//

import UIKit

class VocabularyViewController: UIViewController, UITableViewDataSource {
   
    struct Vocabulary {
        let word: String
        let translation: String
    }
    
    var dailyWords: [Vocabulary] = [
            Vocabulary(word: "Hola", translation: "Hello"),
            Vocabulary(word: "Adiós", translation: "Goodbye"),
            Vocabulary(word: "Por favor", translation: "Please"),
            Vocabulary(word: "Gracias", translation: "Thank you"),
            Vocabulary(word: "Perdón", translation: "Excuse me"),
            Vocabulary(word: "Sí", translation: "Yes"),
            Vocabulary(word: "No", translation: "No"),
            Vocabulary(word: "Quizás", translation: "Maybe"),
            Vocabulary(word: "Hombre", translation: "Man"),
            Vocabulary(word: "Mujer", translation: "Woman"),
            Vocabulary(word: "Niño", translation: "Boy"),
            Vocabulary(word: "Niña", translation: "Girl"),
            Vocabulary(word: "Amor", translation: "Love"),
            Vocabulary(word: "Feliz", translation: "Happy"),
            Vocabulary(word: "Triste", translation: "Sad"),
            Vocabulary(word: "Grande", translation: "Big"),
            Vocabulary(word: "Pequeño", translation: "Small"),
            Vocabulary(word: "Temprano", translation: "Early"),
            Vocabulary(word: "Tarde", translation: "Late"),
            Vocabulary(word: "Rápido", translation: "Fast")
    ]


    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyWords.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
            let word = dailyWords[indexPath.row]
            cell.textLabel?.text = "\(word.word) - \(word.translation)"
        
        // Custom font
            cell.textLabel?.font = UIFont(name: "HelveticaNeue", size: 16) ?? UIFont.systemFont(ofSize: 16)

            // Custom text color
            cell.textLabel?.textColor = .darkGray

            // Background color
            cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor.systemGray6 : UIColor.white
            return cell
    }

}
