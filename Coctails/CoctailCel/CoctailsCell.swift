//
//  CoctailsCell.swift
//  CocktailsAPP
//
//  Created by Алексей on 26.09.2021.
//

import UIKit
import SDWebImage

protocol CoctailsCellDelegate: AnyObject {
    func learnMoreButtonAction(index: Int)
}

struct CoctailsCellModel {
    let coctailName: String?
    let coctailImage: String!
    let labelAlcoholicOrNo: String?
}



class CoctailsCell: UITableViewCell {
    
    @IBOutlet weak var learnMoreButton: UIButton!
    @IBOutlet weak var coctailImage: UIImageView!
    @IBOutlet weak var coctailNameLabel: UILabel!
    @IBOutlet weak var labelAlcoholicOrNo: UILabel!
    
    weak var delegate: CoctailsCellDelegate?
    private var index: IndexPath?
    
//    private var identifier: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override class func description() -> String {
        return "CoctailsCell"
    }
    
   
    func setupWithModel(model: CoctailsCellModel) {
        
        coctailImage.layer.cornerRadius = coctailImage.frame.size.width / 2
        coctailImage.layer.masksToBounds = true
        coctailNameLabel.text = model.coctailName
        labelAlcoholicOrNo.text = model.labelAlcoholicOrNo
//        let url = URL (string: model.coctailImage)
        coctailImage.sd_setImage(with: URL(string: model.coctailImage),
                                 placeholderImage: nil,
                                 options: .refreshCached, context: nil)
    

        if let name = model.coctailName {
            coctailNameLabel.text = name
        }
        if let alcoholicOrNo = model.labelAlcoholicOrNo {
            labelAlcoholicOrNo.text = alcoholicOrNo
        }
        
//        if let profileImg = model.coctailImage {
//            coctailImage.image = profileImg
//           
//        }
        
    }
    @IBAction func learnMoreButtonAction(_ sender: Any) {
        
        delegate?.learnMoreButtonAction(index: index?.row ?? 0)

    }
}
