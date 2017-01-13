import UIKit

final class SearchNoResultsViewController: MWMViewController {

  static var controller: SearchNoResultsViewController {
    let storyboard = UIViewController.mainStoryboard()!
    let id = String(describing: self)
    return storyboard.instantiateViewController(withIdentifier: id) as! SearchNoResultsViewController
  }

  @IBOutlet private weak var container: UIView!
  @IBOutlet fileprivate weak var containerBottomOffset: NSLayoutConstraint!

  override func viewDidLoad() {
    super.viewDidLoad()

    container.addSubview(MWMSearchNoResults.view(with: #imageLiteral(resourceName: "img_search_not_found"),
                                                 title: L("search_not_found"),
                                                 text: L("search_not_found_query")))
    MWMKeyboard.add(self)
    onKeyboardAnimation()
  }
}

extension SearchNoResultsViewController: MWMKeyboardObserver {

  func onKeyboardAnimation() {
    containerBottomOffset.constant = MWMKeyboard.keyboardHeight()
    view.layoutIfNeeded()
  }
}