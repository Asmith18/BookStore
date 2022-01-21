//
//  BookController.swift
//  BookStore
//
//  Created by adam smith on 1/20/22.
//

import Foundation

class BookController {
//MARK: - Singleton
    
    static let sharedInstance = BookController()
//MARK: - Source of truth
    
        var books: [Book] = []

//MARK: - Create
    
    func createBook(author: String, title: String, rating: Double, synopsis: String) {
        let newBook = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        books.append(newBook)
    }
//MARK: - Update
    
    func updateBook(bookToUpdate: Book, updatedAuthor: String, updatedTitle: String, updatedRating: Double, updatedSynopsis: String) {
        bookToUpdate.author = updatedAuthor
        bookToUpdate.title = updatedTitle
        bookToUpdate.rating = updatedRating
        bookToUpdate.synopsis = updatedSynopsis
    }
//MARK: - Delete
    
    func deleteBook(bookToDelete: Book) {
        guard let indexOfBook = books.firstIndex(of: bookToDelete) else {return}
        books.remove(at: indexOfBook)
    }
}
