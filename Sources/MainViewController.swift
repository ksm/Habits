import UIKit

public class MainViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        label.text = "Hi!"
        view.addSubview(label)
    }
}
