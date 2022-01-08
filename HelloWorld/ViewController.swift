//
//  ViewController.swift
//  HelloWorld
//
//  Created by Никита Горбунов on 04.01.2022.
//

import UIKit

enum ColorSquare {
    case red
    case yellow
    case green
}


class ViewController: UIViewController {

    @IBOutlet weak var redSquareView: UIView!
    @IBOutlet weak var yellowSquareView: UIView!
    @IBOutlet weak var greenSquareView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var colorSquare = ColorSquare.red
    
    let squareIsOn: CGFloat = 1
    let squareIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redSquareView.alpha = squareIsOff
        yellowSquareView.alpha = squareIsOff
        greenSquareView.alpha = squareIsOff
        
    }

    override func viewWillLayoutSubviews() {
        redSquareView.layer.cornerRadius = redSquareView.frame.width / 2
        yellowSquareView.layer.cornerRadius = redSquareView.frame.width / 2
        greenSquareView.layer.cornerRadius = redSquareView.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch colorSquare {
        case .red:
            redSquareView.alpha = squareIsOn
            greenSquareView.alpha = squareIsOff
            colorSquare = .yellow
        case .yellow:
            redSquareView.alpha = squareIsOff
            yellowSquareView.alpha = squareIsOn
            colorSquare = .green
        case .green:
            yellowSquareView.alpha = squareIsOff
            greenSquareView.alpha = squareIsOn
            colorSquare = .red
        }
        
    }
    
}

