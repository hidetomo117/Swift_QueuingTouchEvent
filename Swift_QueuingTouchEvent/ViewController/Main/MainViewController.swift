//
//  ViewController.swift
//  Swift_QueuingTouchEvent
//
//  Created by hidetomo on 2019/09/04.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func tappedTransitionButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}

