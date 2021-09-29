






import UIKit

class SecondVCTableViewCell: UITableViewCell {
    
    @IBOutlet var collectionView: UICollectionView!
    func configue(with model: [ModelSecondVC]){
        self.model = model
        collectionView.reloadData()
    }
    
    var model = [ModelSecondVC]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: SecondVC_CollectionViewCell.description(), bundle: nil), forCellWithReuseIdentifier: SecondVC_CollectionViewCell.description())
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    override class func description() -> String {
        return "SecondVCTableViewCell"
    }
}

extension SecondVCTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondVC_CollectionViewCell.description(), for: indexPath) as! SecondVC_CollectionViewCell
        cell.configure(with: model[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        let size = collectionView.frame.width / 3
        return CGSize(width: 196, height: 196)
    }
}
