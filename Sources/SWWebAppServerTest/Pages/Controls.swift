//
//  Controls.swift
//  SWWebAppServer
//
//  Created by Adrian on 12/07/2025.
//

import Foundation
import SWWebAppServer

class ControlsPage : BaseWebEndpoint, WebEndpoint, WebContentEndpoint, MenuIndexable {
    
    var menuPrimary: String = "Controls"
    
    var menuSecondary: String?
    
    
    override func content() -> Any? {
        
        template {
            
            Jumbotron {
                JumbotronTitle("Welcome to the Home Page")
                JumbotronSubtitle("This is a subtitle for the home page.")
            }
            
        }
        
    }
    
    var controller: String? = "controls"
    
    var method: String? = nil
    
    var authenticationRequired: Bool = false
    
    func acceptedRoles(for action: WebRequestActivity) -> [String]? {
        return nil
    }
    
}
