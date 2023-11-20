//
//  ViewController.swift
//  Spanish LanEx UMD
//
//  Created by Sid Parmar on 11/6/23.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var vocabButton: UIButton!
    @IBOutlet weak var flashcardButton: UIButton!
    @IBOutlet weak var quizButton: UIButton!
   
    
    @IBOutlet weak var LabelX: UILabel!
    
    
    @IBAction func Vocab(_ sender: Any) {
    }
    
    @IBAction func FlashCard(_ sender: Any) {
    }
    
    @IBAction func Quiz(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Customize Label
        LabelX.font = UIFont(name: "HelveticaNeue-Medium", size: 18) ?? UIFont.systemFont(ofSize: 18)
        LabelX.textColor = UIColor.darkGray

        // Customize Buttons
        customizeButton(vocabButton, title: "Vocabulary", backgroundColor: UIColor.systemRed)
        customizeButton(flashcardButton, title: "Flashcards", backgroundColor: UIColor.systemYellow)
        customizeButton(quizButton, title: "Quizzes", backgroundColor: UIColor.systemRed)
    }

    func customizeButton(_ button: UIButton, title: String, backgroundColor: UIColor) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 16) ?? UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 10  // Rounded corners
        button.setTitleColor(UIColor.white, for: .normal)
    }

    // MARK: - Actions
    @IBAction func didTapVocabularyButton(_ sender: UIButton) {
           // Navigate to Daily Vocabulary section
       }
       
    @IBAction func didTapFlashcardsButton(_ sender: UIButton) {
           // Navigate to Flashcards section
       }
       
    @IBAction func didTapQuizzesButton(_ sender: UIButton) {
           // Navigate to Quizzes section
       }
       

}

