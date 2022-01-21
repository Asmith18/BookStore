//
//  Book.swift
//  BookStore
//
//  Created by adam smith on 1/20/22.
//

import Foundation

class Book {
    
//MARK: - Properties
    var author: String
    var title: String
    var lastUpdated: Date
    var rating: Double
    var synopsis: String
    
//MARK: - Initializer
    internal init(author: String, title: String, lastUpdated: Date = Date(), rating: Double, synopsis: String) {
        self.author = author
        self.title = title
        self.lastUpdated = lastUpdated
        self.rating = rating
        self.synopsis = synopsis
    }
}// end of class
//MARK: - Extensions

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs.author == rhs.author &&
        lhs.rating == rhs.rating &&
        lhs.title == rhs.title &&
        lhs.synopsis == rhs.synopsis
    }
}
