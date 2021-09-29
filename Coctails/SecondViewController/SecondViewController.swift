//
//  SecondViewController.swift
//  CocktailsAPP
//
//  Created by Алексей on 27.09.2021.
//

import UIKit
struct ModelSearch {
    let nameCoctail: String?
}
struct ModelSecondVC {
    let nameCoctail: String?
    let imageCoctail: String?
}

class SecondViewController: UIViewController {
    
    private var dataFetcher = DataFetcherService()
    @IBOutlet weak var mainImage2VC: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    var isSearchActive = false
    
    var dataSource: [ModelSecondVC] = []
    var searchDataSource: [ModelSecondVC] = []
    
//    let model = [ModelSecondVC]()
    var model: [Drinks] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: SecondVCTableViewCell.description(), bundle: nil), forCellReuseIdentifier: SecondVCTableViewCell.description())
        dataFetcher.myJson2(completion: { [weak self] (modelAlcohol) in
                if let drinks = modelAlcohol?.drinks {
                    self?.model.append(contentsOf: drinks)
                    self?.tableView.reloadData()
                }
        })
        mainImage2VC.image = UIImage(named: "mainImage2VC")
        setupSeachBar()
        toolbar()
        
    }
    //MARK: - ToolBar
    private func toolbar(){
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        let flexibleSpase = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDone))
        toolbar.items = [flexibleSpase, doneButton]
        toolbar.sizeToFit()
//        textfield.inputAccessoryView = toolbar
    }
    @objc private func didTapDone(){
//        textfield.resignFirstResponder()
    }
    private func setupSeachBar() {
        navigationItem.searchController = searchController
//        isSearchActive ? searchDataSource.count : dataSource.count
    }
    
    private func setuoPhotoHeightFor(width: CGFloat) -> CGFloat{
        let squareHeight = width / 3
        let rowsCount = Int(model.count / 3)
        let additionRow = Int(model.count%3 > 0 ? 1 : 0)
        let rowsSumm = rowsCount + additionRow
        return squareHeight * CGFloat(rowsSumm)
    }
}
//MARK: - UITableViewDataSource, UITableViewDelegate
extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SecondVCTableViewCell.description(), for: indexPath) as! SecondVCTableViewCell
        let modelsArray = model.compactMap({ModelSecondVC(nameCoctail: $0.strDrink, imageCoctail: $0.strDrinkThumb)})
        cell.configue(with: modelsArray)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return setuoPhotoHeightFor(width: tableView.frame.width)
    }
    
    
}
//MARK: - UISearchBarDelegate
extension SecondViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        isSearchActive = searchText.count > 0
//        let urlCoctails = "http://www.thecocktaildb.com/api/json/v1/1/search.php?i=\(searchText)"
        print(searchText)
//        searchDataSource = dataSource.filter( { $0.self == searchText  })
        // table reload
        self.dataSource.removeAll()
        
        for item in self.searchDataSource {
            if
                ((item.nameCoctail?.lowercased().contains(searchBar.text!.lowercased())) != nil) {
                self.dataSource.append(item)
            }
        }
        if (searchBar.text!.isEmpty) {
            self.dataSource = self.searchDataSource
        }
        self.tableView.reloadData()
    }
}
