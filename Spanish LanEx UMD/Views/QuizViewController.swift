//
//  QuizViewController.swift
//  Spanish LanEx UMD
//
//  Created by Sid Parmar on 11/13/23.
//

import UIKit

class QuizViewController: UIViewController {
    
    struct Quiz {
        let question: String
        let options: [String]
        let correctAnswer: String
    }
    
    var currentScore: Int = 0

    var questions: [Quiz] = [
        Quiz(question: "How do you say 'Hello' in Spanish?", options: ["Hola", "Adiós", "Por favor", "Gracias"], correctAnswer: "Hola"),
        Quiz(question: "What is 'Goodbye' in Spanish?", options: ["Buenas noches", "Adiós", "Hola", "Gracias"], correctAnswer: "Adiós"),
        Quiz(question: "How do you say 'Please' in Spanish?", options: ["Gracias", "Adiós", "Por favor", "Hola"], correctAnswer: "Por favor"),
        Quiz(question: "What is the Spanish word for 'Thank you'?", options: ["Por favor", "Hola", "Adiós", "Gracias"], correctAnswer: "Gracias"),
        Quiz(question: "How do you say 'Yes' in Spanish?", options: ["No", "Sí", "Hola", "Adiós"], correctAnswer: "Sí"),
        Quiz(question: "What is the Spanish word for 'Water'?", options: ["Agua", "Comida", "Vino", "Cerveza"], correctAnswer: "Agua"),
        Quiz(question: "How do you say 'Food' in Spanish?", options: ["Agua", "Comida", "Cerveza", "Vino"], correctAnswer: "Comida"),
        Quiz(question: "What is 'Good morning' in Spanish?", options: ["Buenas noches", "Buenos días", "Buenas tardes", "Adiós"], correctAnswer: "Buenos días"),
        Quiz(question: "How do you say 'Good night' in Spanish?", options: ["Buenas tardes", "Buenos días", "Buenas noches", "Hola"], correctAnswer: "Buenas noches"),
        Quiz(question: "What is the Spanish word for 'Beer'?", options: ["Vino", "Cerveza", "Agua", "Comida"], correctAnswer: "Cerveza")
    ]
    func loadQuestion() {
        if let currentQuestion = questions.first {
            questionLabel.text = currentQuestion.question
            for (index, button) in answerButtons.enumerated() {
                button.setTitle(currentQuestion.options[index], for: .normal)
            }
        }
    }
        @IBOutlet weak var questionLabel: UILabel!
        @IBOutlet var answerButtons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Customize Question Label
        questionLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 18) ?? UIFont.systemFont(ofSize: 18)
        questionLabel.textColor = UIColor.darkGray

        // Customize Answer Buttons
        answerButtons.forEach { button in
            button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 16) ?? UIFont.boldSystemFont(ofSize: 16)
            button.backgroundColor = UIColor.systemBlue
            button.layer.cornerRadius = 10
            button.setTitleColor(UIColor.white, for: .normal)
        }

        loadQuestion()
    }


        @IBAction func answerButtonTapped(_ sender: UIButton) {
            guard let selectedAnswer = sender.title(for: .normal),
                      let currentQuestion = questions.first else { return }

                if selectedAnswer == currentQuestion.correctAnswer {
                    currentScore += 1 // Increment score for correct answer
                }
                moveToNextQuestion()
        }
    func moveToNextQuestion() {
        questions.removeFirst()
        if questions.isEmpty {
            showFinalScore()
        } else {
            loadQuestion()
        }
    }
    func showFinalScore() {
        let alert = UIAlertController(title: "Quiz Completed", message: "Your score is \(currentScore) out of 10", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Back to Main", style: .default, handler: { _ in
            self.navigationController?.popViewController(animated: true)
        }))
        present(alert, animated: true, completion: nil)
    }
   
}
