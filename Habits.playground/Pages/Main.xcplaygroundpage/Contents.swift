import HabitsFramework
import PlaygroundSupport

let mainViewController = MainViewController()
let (parent, _) = playgroundControllers(child: mainViewController)

PlaygroundPage.current.liveView = parent
