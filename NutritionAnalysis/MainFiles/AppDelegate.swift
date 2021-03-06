//
//  AppDelegate.swift
//  NutritionAnalysis
//
//  Created by Maher on 6/25/21.
//

import UIKit
import MBProgressHUD
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}



extension UIViewController {
    func showIndcator(title : String , discribtion : String ) {
        let indcator = MBProgressHUD.showAdded(to: self.view, animated: true)
        indcator.label.text = title
        indcator.detailsLabel.text = discribtion
        indcator.isUserInteractionEnabled = false
        self.view.isUserInteractionEnabled = false
        indcator.show(animated: true)
    }
    
    func hideIndcator(){
        MBProgressHUD.hide(for: self.view, animated: true)
        self.view.isUserInteractionEnabled = true
    }
    
    func showAlert(Error : String) {
        let alert = UIAlertController(title: "Error", message: Error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
