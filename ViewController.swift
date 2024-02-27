//
//  ViewController.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var wordsCollectionView: UICollectionView!
  @IBOutlet weak var keyboardCollectionView: UICollectionView!

  private var boardController: BoardController!
  private var keyboardController: KeyboardController!

  override func viewDidLoad() {
    super.viewDidLoad()

    setupNavigationBar()

    boardController = BoardController(collectionView: wordsCollectionView)
    keyboardController = KeyboardController(collectionView: keyboardCollectionView)
    /*
      Exercise 3: Assign a closure to the `didSelectString` property of `keyboardController` (see KeyboardController.swift):
      
  (1) This closure takes in a string (the string selected from the keyboard).
    (2)  If the string is equal to the `DELETE_KEY` constant (see Constants.swift), then call the `deleteLastCharacter` method of `boardController`.
     (3) Else, it should use the `enter` method of `boardController` and pass in the selected string as the argument.
     */
    // START YOUR CODE HERE
      keyboardController.didSelectString = { selectedString in  // step 1
          if selectedString == DELETE_KEY {  // step 2
                  self.boardController.deleteLastCharacter()
              } 
          else { // step 3
              self.boardController.enter(selectedString)
          }
          }  // close keyboardController.didSelectString
      
    // END YOUR CODE HERE
  }
}
