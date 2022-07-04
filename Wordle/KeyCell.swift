//
//  KeyCell.swift
//  Wordle
//
//  Created by Роман Карасёв on 04.07.2022.
//

import UIKit

class KeyCell: UICollectionViewCell {
    
    static let identifier = "KeyCell"
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray4
        contentView.addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = contentView.bounds
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }
    
    func configureCell(with letter: Character) {
        label.text = String(letter).uppercased()
    }
}
