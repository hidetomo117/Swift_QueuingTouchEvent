//
//  AppHandler.swift
//  Swift_QueuingTouchEvent
//
//  Created by hidetomo on 2019/09/04.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

class AppHandler: UIApplication {

    override func sendEvent(_ event: UIEvent) {
        if event.type == .touches {
            if let allTouches = event.allTouches {
                for touch in allTouches {
                    switch touch.phase {
                    case .began:
                        postNotification(name: .ncTouchesBegan)
                    default:
                        break
                    }
                }
            }
        }
        
        super.sendEvent(event)
    }
    
    func postNotification(name: Notification.Name) {
        NotificationCenter.default.post(name: name, object: nil)
    }
}

