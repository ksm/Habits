import UIKit

public class MainViewController: UITableViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Alert", style: .plain, target: self, action: #selector(MainViewController.alertAction))
    }
    
    @objc private dynamic func alertAction() {
        let alert = UIAlertController(title: "Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

public extension MainViewController {
    public static func instantiate() -> MainViewController {
        let bundle = Bundle(for: MainViewController.self)
        let storyboard = UIStoryboard(name: "MainViewController", bundle: bundle)
        return storyboard.instantiateInitialViewController()! as! MainViewController
    }
}
