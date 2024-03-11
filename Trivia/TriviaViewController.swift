//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Hala Eddouh on 3/11/24.
//

import UIKit

class TriviaViewController: UIViewController {

    struct TriviaQuestion {
        let questionText: String
        let answerChoices: [String]
        let correctAnswerIndex: Int
    }
    
    @IBOutlet weak var Question: UILabel!
    
    @IBOutlet weak var Answer1: UIButton!
    
    @IBOutlet weak var Answer2: UIButton!
    
    @IBOutlet weak var Answer3: UIButton!
    
    @IBOutlet weak var Answer4: UIButton!
    
    
    var triviaQuestions: [TriviaQuestion] = []
       var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadTriviaQuestions()
        displayQuestion()
        
    }
    func loadTriviaQuestions() {
            
        let question1 = TriviaQuestion(questionText: "What is the capital of Germany?",
                                       answerChoices:
                                       ["Berlin", "Madrid", "London", "Hamburg"],
                                    correctAnswerIndex: 0)
            
        let question2 = TriviaQuestion(questionText: "What main language do they speak in France?",
                                               answerChoices: ["Spanish", "French", "Italian", "English"],
                                               correctAnswerIndex: 1)
        let question3 = TriviaQuestion(questionText: "Which CodePath course are you taking?",
                                       answerChoices: ["Web", "Cyber Security", "IOS", "This is for a CodePath Course???"],
                                       correctAnswerIndex: 2)
        let question4 = TriviaQuestion(questionText: "Which company has a bite out of their logo",
                                       answerChoices: ["My moms food", "Google", "Samsung", "Apple"],
                                       correctAnswerIndex: 3)
        
            triviaQuestions = [question1, question2,question3, question4]
        
        }
        
        func displayQuestion() {
            guard currentQuestionIndex < triviaQuestions.count else {
                return
            }
            let question = triviaQuestions[currentQuestionIndex]
            Question.text = question.questionText
            Answer1.setTitle(question.answerChoices[0], for: .normal)
            Answer2.setTitle(question.answerChoices[1], for: .normal)
            Answer3.setTitle(question.answerChoices[2], for: .normal)
            Answer4.setTitle(question.answerChoices[3], for: .normal)
        }
        
    
    @IBAction func answer1Tapped(_ sender: UIButton) {
        handleAnswerButtonTapped(answerIndex: 0)

    }
    
    @IBAction func answer2Tapped(_ sender: UIButton) {
        handleAnswerButtonTapped(answerIndex: 1)

    }
    
    @IBAction func answer3Tapped(_ sender: UIButton) {
        handleAnswerButtonTapped(answerIndex: 2)

    }
    
    @IBAction func answer4Tapped(_ sender: UIButton) {
        handleAnswerButtonTapped(answerIndex: 3)

    }
    
    
    func handleAnswerButtonTapped(answerIndex: Int) {
        let currentQuestion = triviaQuestions[currentQuestionIndex]
        if answerIndex == currentQuestion.correctAnswerIndex {
            currentQuestionIndex += 1

        } else {
        }
        displayQuestion()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
