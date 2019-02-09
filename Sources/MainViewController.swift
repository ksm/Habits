import UIKit
import SwiftMessages

public class MainViewController: UITableViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Toast", style: .plain, target: self, action: #selector(MainViewController.toast))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Alert", style: .plain, target: self, action: #selector(MainViewController.alert))
    }

    @objc private dynamic func toast() {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.warning, iconStyle: .light)
        (view.backgroundView as? CornerRoundingView)?.cornerRadius = 2
        view.titleLabel?.isHidden = true
        view.button?.isHidden = true
        view.bodyLabel?.text = "Toast!"
        
        var config = SwiftMessages.Config.init()
        config.presentationContext = .viewController(self)
        config.duration = .forever
        
        SwiftMessages.show(config: config, view: view)
    }
    
    @objc private dynamic func alert() {
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
