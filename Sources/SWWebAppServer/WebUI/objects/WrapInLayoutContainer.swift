//
//  WrapInLayoutContainer.swift
//  SWWebAppServer
//
//  Created by Adrian on 16/07/2025.
//

public extension BaseWebEndpoint {
    
    @discardableResult
    func WrapInLayoutContainer(_ closure: WebComposerClosure) -> Any {
        if parent?.layout == .horizontal {
            return VStack {
                var object = create { element in
                    element.class("column")
                }
                stack.append(object)
                closure()
                stack.removeAll(where: { $0.builderId == object.builderId })
            }
        } else if parent?.layout == .vertical {
            return VStack {
                var object = create { element in
                    element.class("row")
                }
                stack.append(object)
                closure()
                stack.removeAll(where: { $0.builderId == object.builderId })
            }
        } else {
            var object = create { element in
                element.class("row")
            }
            stack.append(object)
            closure()
            stack.removeAll(where: { $0.builderId == object.builderId })
            return object
        }
    }
    
}
