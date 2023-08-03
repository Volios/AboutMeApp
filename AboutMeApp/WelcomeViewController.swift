//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Gilbytes on 31.07.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLab: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let welcome = welcomeLab else { return }
        welcomeLabel.text = "Welcome, " + welcome + "!"
    }

}
