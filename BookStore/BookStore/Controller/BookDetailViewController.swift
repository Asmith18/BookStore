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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//MARK: - Actions
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
    }
    @IBAction func clearButtonPressed(_ sender: UIButton) {
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
