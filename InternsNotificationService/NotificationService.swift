//
//  NotificationService.swift
//  InternsNotificationService
//
//  Created by Aman Arora on 24/05/23.
//

import UserNotifications
import MoEngageRichNotification

class NotificationService: UNNotificationServiceExtension {

    var contentHandler: ((UNNotificationContent) -> Void)?
    var bestAttemptContent: UNMutableNotificationContent?

    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        
        MoEngageSDKRichNotification.setAppGroupID("group.moengage.alphadevs.moengage")
        self.contentHandler = contentHandler
        bestAttemptContent = (request.content.mutableCopy() as? UNMutableNotificationContent)
        
        MoEngageSDKRichNotification.handle(richNotificationRequest: request, withContentHandler: contentHandler)

    }
    
    override func serviceExtensionTimeWillExpire() {
        // Called just before the extension will be terminated by the system.
        // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
        if let contentHandler = contentHandler, let bestAttemptContent =  bestAttemptContent {
            contentHandler(bestAttemptContent)
        }
    }

}
