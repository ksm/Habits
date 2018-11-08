import UIKit
import HabitsFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let window = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navigationController = UINavigationController(rootViewController: MainViewController.instantiate())
        window.rootViewController = navigationController
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        return true
    }
}
