//
//  Example2View.swift
//  FlexLayoutBasic
//
//  Created by ByungHoon Ann on 2023/08/06.
//

import UIKit

class Example2View: UIView {
    fileprivate let rootFlexContainer = UIView()

    init() {
        super.init(frame: .zero)
        backgroundColor = .white

        let view1 = BasicView(text: "View 1")
        let view2 = BasicView(text: "View 2")
        let view3 = BasicView(text: "View 3")
        
        rootFlexContainer.flex.justifyContent(.center).padding(10).define { (flex) in
            flex.addItem(view1).height(40)
            flex.addItem(view2).height(50).marginTop(10)
            flex.addItem(view3).height(60).marginTop(10)
        }
        
        addSubview(rootFlexContainer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        // Layout the flexbox container using PinLayout
        // NOTE: Could be also layouted by setting directly rootFlexContainer.frame
        rootFlexContainer.pin.all(pin.safeArea)
        
        // Then let the flexbox container layout itself
        rootFlexContainer.flex.layout()
    }
}
