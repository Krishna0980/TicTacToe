//
//  TicTacToeCell.swift
//  TicTakToe
//
//  Created by Krishna Bhatt on 30/06/21.
//

import UIKit

class TiaTacToeCell: UICollectionViewCell {
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    func setupCell(with status:Int) {
        
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        
        contentView.addSubview(myImageView)
        
        myImageView.frame = CGRect(x: 10, y:10,width:60, height: 60)
        
        let name = status == 0 ? "Zero" : status == 1 ? "Multiply" : ""
        
        myImageView.image = UIImage(named: name)
    }
    
}
