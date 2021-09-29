






import UIKit

class SecondVC_CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var labelNameCoctail: UILabel!
    @IBOutlet var imageCoctail: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override class func description() -> String {
        return "SecondVC_CollectionViewCell"
    }
    func configure(with model: ModelSecondVC){
        self.labelNameCoctail.text = model.nameCoctail
        imageCoctail.sd_setImage(with: URL(string: model.imageCoctail ?? ""),
                                 placeholderImage: nil,
                                 options: .refreshCached, context: nil)
        self.imageCoctail.contentMode = .scaleAspectFill
    }
}
