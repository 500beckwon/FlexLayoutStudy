//
//  ViewController.swift
//  FlexLayoutBasic
//
//  Created by ByungHoon Ann on 2023/08/06.
//

import UIKit
import FlexLayout

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = TestViewController()
        navigationController?.pushViewController(vc, animated: true)

    }
}

