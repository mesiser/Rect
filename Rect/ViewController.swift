//
//  ViewController.swift
//  Rect
//
//  Created by Vadim Shalugin on 17.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let sideSize: CGFloat = 50
    private var rectangle: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRect()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        animateRect()
    }
    
    func createRect() {
        let frame = CGRect(x: (view.frame.width - sideSize) / 2, y: (view.frame.height - sideSize) / 2, width: sideSize, height: sideSize)
        rectangle = UIView(frame: frame)
        rectangle?.backgroundColor = .green
    }
    
    func animateRect() {
        guard let rectangle = rectangle else { return }
        UIView.animate(withDuration: 1) {
            rectangle.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
        view.addSubview(rectangle)
    }
}

