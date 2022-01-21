//
//  LibraryTableViewCell.swift
//  BookStore
//
//  Created by adam smith on 1/20/22.
//

import UIKit

class LibraryTableViewCell: UITableViewCell {
//MARK: - Outlets
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookRatingLabel: UILabel!

    func updateViews(book: Book) {
        bookTitleLabel.text = book.title
        bookAuthorLabel.text = book.author
        bookRatingLabel.text = String(book.rating)
    }
}
