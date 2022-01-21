//
//  BookListTableviewControllerTableViewController.swift
//  BookStore
//
//  Created by adam smith on 1/20/22.
//

import UIKit

class BookListTableviewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return BookController.sharedInstance.books.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as? LibraryTableViewCell else { return UITableViewCell() }
        let book = BookController.sharedInstance.books[indexPath.row]
        cell.updateViews(book: book)
        // Configure the cell...


        return cell
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let byeByeBook = BookController.sharedInstance.books[indexPath.row]
            BookController.sharedInstance.deleteBook(bookToDelete: byeByeBook)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }


    // MARK: - Navigation/Segue

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //does the identifyer match the segue we are going to
        if segue.identifier == "toDetailVC" {
            // asssigning, and type casting the constant destination to the type Bookdeatilviewcontroller
            if let destination = segue.destination as? BookDetailViewController,
               // assigning "indexpath" to the index path the user selected
               let indexPath = tableView.indexPathForSelectedRow {
                // assigning "Booktopass" to a specific book from the source of truth
                let bookToPass = BookController.sharedInstance.books[indexPath.row]
                // assigns the book to the book on our destination
                destination.book = bookToPass
            }
        }
    }
}
