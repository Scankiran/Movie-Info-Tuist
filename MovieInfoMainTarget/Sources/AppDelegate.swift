import UIKit
import SplashPageModule
import MainPageModule

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {

        loadSplashPage()
        return true
    }

}

private extension AppDelegate {

    func loadSplashPage() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = SplashPageView()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}
