//
//  ViewController.swift
//  TicTakToe
//
//  Created by Krishna Bhatt on 30/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton :UIButton = {
       let button = UIButton()
        button.setTitle("Tic Tac Toe", for: .normal)
        button.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        button.backgroundColor = .black
       return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButton)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "image2 3.jpg")!)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame=CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80, height: 70)
    }

    @objc func handleButton(){
        print("received..")
        
        let vc = TiaTacToeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
