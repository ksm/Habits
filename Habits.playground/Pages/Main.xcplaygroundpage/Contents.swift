import UIKit
import PlaygroundSupport
import HabitsFramework

let (parent, _) = playgroundControllers(child: UINavigationController(rootViewController: MainViewController.instantiate()))

PlaygroundPage.current.liveView = parent
