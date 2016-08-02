//
//  RootWireframe.swift
//  MVVM
//
//  Created by alex on 03.02.16.
//  Copyright © 2016 alex. All rights reserved.
//

import UIKit

class RootWireframe: NSObject {
  
    
    func application(didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?, window: UIWindow) -> Bool {
        
        
        
        if let view = window.rootViewController as? GreetingViewController {
            let model = Person(firstName: "David", lastName: "Blaine")
            let viewModel = GreetingViewModel(person: model)
            view.viewModel = viewModel
        }
        return true
    }
    
     
}
