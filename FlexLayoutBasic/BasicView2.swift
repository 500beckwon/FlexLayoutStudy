//
//  BasicView2.swift
//  FlexLayoutBasic
//
//  Created by ByungHoon Ann on 2023/08/06.
//

import UIKit
import PinLayout

class BasicView2: UIView {
    fileprivate let button = UIButton()
    
    var sizeThatFitsExpectedArea: CGFloat = 40 * 40

    init(text: String? = nil) {
        super.init(frame: .zero)

        backgroundColor = UIColor(red: 0.58, green: 0.78, blue: 0.95, alpha: 1.00)
        layer.borderColor = UIColor(red: 0.37, green: 0.67, blue: 0.94, alpha: 1.00).cgColor
        layer.borderWidth = 2
               
        button.setTitle(text, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.sizeToFit()
        addSubview(button)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        button.pin.center()
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var newSize = CGSize()
        if size.width != CGFloat.greatestFiniteMagnitude {
            newSize.width = size.width
            newSize.height = sizeThatFitsExpectedArea / newSize.width
        } else if size.height != CGFloat.greatestFiniteMagnitude {
            newSize.height = size.height
            newSize.width = sizeThatFitsExpectedArea / newSize.height
        } else {
            newSize.width = 40
            newSize.height = sizeThatFitsExpectedArea / newSize.width
        }
        
        return newSize
    }
}
