//
//  NotificationViewController.swift
//  InternsNotificationContent       InternsNotificationContent       InternsNotificationContent       InternsNotificationContent
//
//  Created by Aman Arora on 24/05/23.
//

import UIKit
import UserNotifications
import UserNotificationsUI
import MoEngageRichNotification

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
        MoEngageSDKRichNotification.setAppGroupID("group.moengage.alphadevs.moengage")
    }
    
    func didReceive(_ notification: UNNotification) {
        MoEngageSDKRichNotification.addPushTemplate(toController: self, withNotification: notification)
    }

}
