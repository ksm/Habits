import UIKit
import HabitsFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let window = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let storyboard = UIStoryboard(name: "MainViewController", bundle: Bundle(for: MainViewController.self))
        window.rootViewController = storyboard.instantiateInitialViewController()
        window.makeKeyAndVisible()
        return true
    }
}
