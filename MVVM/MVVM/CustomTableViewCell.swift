//
//  CustomTableViewCell.swift
//  MVVM
//
//  Created by Muhammadqodir on 29/09/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var myLabel: UILabel!

    
    static let cellIdentifier = "CustomTableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil )
    }
    
    public func configure(with viewModel: CellViewModel) {
        myLabel.text = "\(viewModel.name) \(viewModel.firstName)"
        
    }
    
}
