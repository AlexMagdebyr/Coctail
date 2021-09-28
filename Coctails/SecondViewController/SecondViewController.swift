//
//  SecondViewController.swift
//  CocktailsAPP
//
//  Created by Алексей on 27.09.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var mainImage2VC: UIImageView!
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var isSearchActive = false
    var dataSource: [String] = []
    var searchDataSource: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImage2VC.image = UIImage(named: "mainImage2VC")
        setupSeachBar()
        
    }
    private func setupSeachBar() {
        navigationItem.searchController = searchController
//        searchController.searchBar.backgroundColor = .black
//        searchController.searchBar.alpha = 0.85
//
        
        
        // isSearchActive ? searchDataSource.count : dataSource.count
        
    }
}
extension SecondViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        isSearchActive = searchText.count > 0
        
//        let urlCoctails = "http://www.thecocktaildb.com/api/json/v1/1/search.php?i=\(searchText)"
        print(searchText)
        
        
        searchDataSource = dataSource.filter( { $0.self == searchText  })
        // table reload
        
    }
}
