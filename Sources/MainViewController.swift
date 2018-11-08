import UIKit

public class MainViewController: UITableViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}

public extension MainViewController {
    public static func instantiate() -> MainViewController {
        let bundle = Bundle(for: MainViewController.self)
        let storyboard = UIStoryboard(name: "MainViewController", bundle: bundle)
        return storyboard.instantiateInitialViewController()! as! MainViewController
    }
}
