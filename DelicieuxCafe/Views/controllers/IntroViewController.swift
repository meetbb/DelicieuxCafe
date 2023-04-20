//
//  IntroViewController.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 16/04/23.
//

import UIKit

class IntroViewController: UIViewController, UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        navigationController?.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
