//
//  HStack.swift
//  SWWebAppServer
//
//  Created by Adrian on 01/07/2025.
//

public extension BaseWebEndpoint {
    
    @discardableResult
    func HStack(_ closure: WebComposerClosure) -> WebCoreElement {
        let object = create { element in
            element.class("row")
        }
        stack.append(object)
        closure()
        stack.removeAll(where: { $0.builderId == object.builderId })
        return object
    }
    
}
