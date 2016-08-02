//
//  ViewController.swift
//  MVVM_testM
//
//  Created by alex  on 31.07.16.
//  Copyright © 2016 alex . All rights reserved.
//

import UIKit

class GreetingViewController : UIViewController {
    
    
    @IBOutlet weak var showGreetingButton : UIButton!
    @IBOutlet weak var greetingLabel :  UILabel!

    var viewModel: GreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showGreetingButton.addTarget(self, action: #selector(GreetingViewController.didTapButton(_:)), forControlEvents: .TouchUpInside)

    }
    func didTapButton(button: UIButton) {
        self.viewModel.showGreeting()
    }

    // layout code goes here
}
