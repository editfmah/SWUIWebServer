//
//  main..swift
//  SWWebAppServer
//
//  Created by Adrian on 21/06/2025.
//

import Foundation
import SWWebAppServer

let server = SWWebAppServer(port: 4242, bindAddressv4: "0.0.0.0")
server.register(HomePage())
server.register(PurposePage())
server.register(ControlsPage())

server.onAcceptedRequest { endpoint in
    
}

server.onGetUserRoles { authenticationToken, endpoint in
    return ["admin"]
}

print("started....")

// now block indefinately allowing the server to run
let semaphore = DispatchSemaphore(value: 0)
semaphore.wait()
