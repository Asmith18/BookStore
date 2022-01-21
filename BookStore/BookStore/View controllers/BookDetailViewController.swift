//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by adam smith on 1/20/22.
//

import UIKit

class BookDetailViewController: UIViewController {
    
//MARK: - Outlets
    @IBOutlet weak var enterBookTitleTextField: UITextField!
    @IBOutlet weak var enterAuthorTextField: UITextField!
    @IBOutlet weak var enterRatingTextField: UITextField!
    @IBOutlet weak var enterDescriptionTextField: UITextView!
    
    //MARK: - Properties
    
    var book: Book?
    
    //MARK: - cycle of life
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews(book: book)
    }

//MARK: - Actions
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        
       guard let title = enterBookTitleTextField.text,
        let author = enterAuthorTextField.text,
        let stringRating = enterRatingTextField.text,
        let description = enterDescriptionTextField.text,
             let rating = Double(stringRating) else {return}
        // now that i have the data i can create the book obj
        if let book = book {
            BookController.sharedInstance.updateBook(bookToUpdate: book, updatedAuthor: author, updatedTitle: title, updatedRating: rating, updatedSynopsis: description)
        } else {
            BookController.sharedInstance.createBook(author: author, title: title, rating: rating, synopsis: description)
        }
        navigationController?.popViewController(animated: true)
    }
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        resetView()
    }
//MARK: - Function that Help
    
    func updateViews(book: Book?) {
        guard let book = book else {return}
        enterRatingTextField.text = String(book.rating)
        enterAuthorTextField.text = book.author
        enterBookTitleTextField.text = book.title
        enterDescriptionTextField.text = book.synopsis
    }
    
    func resetView() {
        enterRatingTextField.text = ""
        enterAuthorTextField.text = ""
        enterBookTitleTextField.text = ""
        enterDescriptionTextField.text = ""
    }
}
