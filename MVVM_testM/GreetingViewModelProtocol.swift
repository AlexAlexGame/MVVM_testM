//
//  GreetingViewModelProtocol.swift
//  MVVM_testM
//
//  Created by alex  on 31.07.16.
//  Copyright © 2016 alex . All rights reserved.
//

protocol GreetingViewModelProtocol: class {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())? { get set } // function to call when greeting did change
    init(person: Person)
    func showGreeting()
}
