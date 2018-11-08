import HabitsFramework
import PlaygroundSupport
import UIKit

let mainViewController = MainViewController.instantiate()
let navigationController = UINavigationController(rootViewController: mainViewController)
let (parent, _) = playgroundControllers(child: navigationController)

PlaygroundPage.current.liveView = parent
