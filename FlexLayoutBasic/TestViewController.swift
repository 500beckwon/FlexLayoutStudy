//
//  TestViewController.swift
//  FlexLayoutBasic
//
//  Created by ByungHoon Ann on 2023/08/06.
//

import UIKit

final class TestViewController: BaseViewController {
    fileprivate var mainView: Example1View {
        return self.view as! Example1View
    }
    
    override init() {
        super.init()
        title = ""
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.didTapped = { _ in
            
        }
    }
    
    override func loadView() {
        view = Example1View()
    }
    
}
