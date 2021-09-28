//
//  ViewController.swift
//  CocktailsAPP
//
//  Created by Алексей on 12.09.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    private var dataFetcher = DataFetcherService()
    
    private var modelAlcohol: All_Coctails?
    private var allDrinks: [Drinks] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImageView.image = UIImage(named: "mainImageView")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: CoctailsCell.description(), bundle: nil), forCellReuseIdentifier: CoctailsCell.description())
        
        dataFetcher.myJson2(completion: { [weak self] (modelAlcohol) in
                if let drinks = modelAlcohol?.drinks {
                    self?.allDrinks.append(contentsOf: drinks)
                    self?.tableView.reloadData()
                }
        })
   
          
//        dataFetcher.myJson1(completion: { [weak self] response in
//            guard let self = self, let response = response else { return }
//            self.modelAlcohol = response
////            self.configureDataSourceFrom(response: response)
//        })
        }

    }

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allDrinks.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let coctail = allDrinks[indexPath.row]
      
        let controller = OneCoctailViewController(strDrink: coctail.strDrink, strCategory: coctail.strCategory, strAlcoholic: coctail.strAlcoholic, strGlass: coctail.strGlass, strInstructions: coctail.strInstructions, strDrinkThumb: coctail.strDrinkThumb, strIngredient1: coctail.strIngredient1, strIngredient2: coctail.strIngredient2, strIngredient3: coctail.strIngredient3, strIngredient4: coctail.strIngredient4, strIngredient5: coctail.strIngredient5, strIngredient6: coctail.strIngredient6, strIngredient7: coctail.strIngredient7, strIngredient8: coctail.strIngredient8, strIngredient9: coctail.strIngredient9, strIngredient10: coctail.strIngredient10, strMeasure1: coctail.strMeasure1, strMeasure2: coctail.strMeasure2, strMeasure3: coctail.strMeasure3, strMeasure4: coctail.strMeasure4, strMeasure5: coctail.strMeasure5, strMeasure6: coctail.strMeasure6, strMeasure7: coctail.strMeasure7, strMeasure8: coctail.strMeasure8, strMeasure9: coctail.strMeasure9, strMeasure10: coctail.strMeasure10)
        present(controller, animated: true, completion: nil)
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CoctailsCell.description(), for: indexPath) as! CoctailsCell
        cell.delegate = self
        
        let modelsArray = allDrinks.compactMap({CoctailsCellModel(coctailName: $0.strDrink, coctailImage: $0.strDrinkThumb,  labelAlcoholicOrNo: $0.strAlcoholic)})
     
        cell.setupWithModel(model: modelsArray[indexPath.row])
        return cell
    }
    
}


extension ViewController: CoctailsCellDelegate {
    func learnMoreButtonAction(index: Int) {
//        allDrinks.first(where: { $0.idDrink == identifier})
        allDrinks.first(where: {$0.idDrink == String(index)})
        
//        let controller = OneCoctailViewController()

//        present(controller, animated: true, completion: nil)
        
        
    }
}


