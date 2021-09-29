//
//  OneCoctailViewController.swift
//  CocktailsAPP
//
//  Created by Алексей on 27.09.2021.
//

import UIKit

class OneCoctailViewController: UIViewController {
    
    let strDrink : String?
    let strCategory : String?
    let strAlcoholic : String?
    let strGlass : String?
    let strInstructions : String?
    let strDrinkThumb : String?
    let strIngredient1 : String?
    let strIngredient2 : String?
    let strIngredient3 : String?
    let strIngredient4 : String?
    let strIngredient5 : String?
    let strIngredient6 : String?
    let strIngredient7 : String?
    let strIngredient8 : String?
    let strIngredient9 : String?
    let strIngredient10 : String?
    let strMeasure1 : String?
    let strMeasure2 : String?
    let strMeasure3 : String?
    let strMeasure4 : String?
    let strMeasure5 : String?
    let strMeasure6 : String?
    let strMeasure7 : String?
    let strMeasure8 : String?
    let strMeasure9 : String?
    let strMeasure10 : String?
    
    init(strDrink : String?, strCategory : String?, strAlcoholic : String?, strGlass : String?, strInstructions : String?, strDrinkThumb : String?, strIngredient1 : String?, strIngredient2 : String?, strIngredient3 : String?, strIngredient4 : String?, strIngredient5 : String?, strIngredient6 : String?, strIngredient7 : String?, strIngredient8 : String?, strIngredient9 : String?, strIngredient10 : String?, strMeasure1 : String?, strMeasure2 : String?, strMeasure3 : String?, strMeasure4 : String?, strMeasure5 : String?, strMeasure6 : String?,
        strMeasure7 : String?, strMeasure8 : String?, strMeasure9 : String?,
        strMeasure10 : String?){
        self.strDrink = strDrink
        self.strCategory = strCategory
        self.strAlcoholic = strAlcoholic
        self.strGlass = strGlass
        self.strInstructions = strInstructions
        self.strDrinkThumb = strDrinkThumb
        self.strIngredient1 = strIngredient1
        self.strIngredient2 = strIngredient2
        self.strIngredient3 = strIngredient3
        self.strIngredient4 = strIngredient4
        self.strIngredient5 = strIngredient5
        self.strIngredient6 = strIngredient6
        self.strIngredient7 = strIngredient7
        self.strIngredient8 = strIngredient8
        self.strIngredient9 = strIngredient9
        self.strIngredient10 = strIngredient10
        self.strMeasure1 = strMeasure1
        self.strMeasure2 = strMeasure2
        self.strMeasure3 = strMeasure3
        self.strMeasure4 = strMeasure4
        self.strMeasure5 = strMeasure5
        self.strMeasure6 = strMeasure6
        self.strMeasure7 = strMeasure7
        self.strMeasure8 = strMeasure8
        self.strMeasure9 = strMeasure9
        self.strMeasure10 = strMeasure10
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var alcoholImage: UIImageView!
    @IBOutlet weak var nameAlcohol: UILabel!
    @IBOutlet weak var aboutAlcohol: UILabel!
    @IBOutlet weak var acoholOrNo: UILabel!
    @IBOutlet weak var ingridientsLabel: UILabel!
    @IBOutlet weak var ingridientsNumber1: UILabel!
    @IBOutlet weak var ingridientsNumber2: UILabel!
    @IBOutlet weak var ingridientsNumber3: UILabel!
    @IBOutlet weak var ingridientsNumber4: UILabel!
    @IBOutlet weak var ingridientsNumber5: UILabel!
    @IBOutlet weak var ingridientsNumber6: UILabel!
    @IBOutlet weak var ingridientsNumber7: UILabel!
    @IBOutlet weak var ingridientsNumber8: UILabel!
    @IBOutlet weak var ingridientsNumber9: UILabel!
    @IBOutlet weak var ingridientsNumber10: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var mesure1: UILabel!
    @IBOutlet weak var mesure2: UILabel!
    @IBOutlet weak var mesure3: UILabel!
    @IBOutlet weak var mesure4: UILabel!
    @IBOutlet weak var mesure5: UILabel!
    @IBOutlet weak var mesure6: UILabel!
    @IBOutlet weak var mesure7: UILabel!
    @IBOutlet weak var mesure8: UILabel!
    @IBOutlet weak var mesure9: UILabel!
    @IBOutlet weak var mesure10: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emptyText_BGColor()
    }
    
    func emptyText_BGColor() {
        alcoholImage.sd_setImage(with: URL(string: strDrinkThumb!),
                                 placeholderImage: nil,
                                 options: .refreshCached, context: nil)
        nameAlcohol.text = strDrink
        aboutAlcohol.text = strInstructions
        acoholOrNo.text = strAlcoholic! + (" Coctail")
        acoholOrNo.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        acoholOrNo.layer.masksToBounds = true
        acoholOrNo.layer.cornerRadius = 5
        ingridientsLabel.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        ingridientsLabel.layer.masksToBounds = true
        ingridientsLabel.layer.cornerRadius = 5
        ingridientsNumber1.text = strIngredient1
        ingridientsNumber2.text = strIngredient2
        ingridientsNumber3.text = strIngredient3
        ingridientsNumber4.text = strIngredient4
        ingridientsNumber5.text = strIngredient5
        ingridientsNumber6.text = strIngredient6
        ingridientsNumber7.text = strIngredient7
        ingridientsNumber8.text = strIngredient8
        ingridientsNumber9.text = strIngredient9
        ingridientsNumber10.text = strIngredient10
        unitLabel.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        unitLabel.layer.masksToBounds = true
        unitLabel.layer.cornerRadius = 5
        mesure1.text = strMeasure1
        mesure2.text = strMeasure2
        mesure3.text = strMeasure3
        mesure4.text = strMeasure4
        mesure5.text = strMeasure5
        mesure6.text = strMeasure6
        mesure7.text = strMeasure7
        mesure8.text = strMeasure8
        mesure9.text = strMeasure9
        mesure10.text = strMeasure10
        
        if ingridientsNumber1.text !=  nil{
            ingridientsNumber1.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber1.layer.masksToBounds = true
            ingridientsNumber1.layer.cornerRadius = 5
            mesure1.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure1.layer.masksToBounds = true
            mesure1.layer.cornerRadius = 5
        } else {
            ingridientsNumber1.isHidden = true
            mesure1.isHidden = true
        }
        if ingridientsNumber2.text !=  nil{
            ingridientsNumber2.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber2.layer.masksToBounds = true
            ingridientsNumber2.layer.cornerRadius = 5
            mesure2.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure2.layer.masksToBounds = true
            mesure2.layer.cornerRadius = 5
        } else {
            ingridientsNumber2.isHidden = true
            mesure2.isHidden = true
        }
        if ingridientsNumber3.text !=  nil{
            ingridientsNumber3.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber3.layer.masksToBounds = true
            ingridientsNumber3.layer.cornerRadius = 5
            mesure3.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure3.layer.masksToBounds = true
            mesure3.layer.cornerRadius = 5
        } else {
            ingridientsNumber3.isHidden = true
            mesure3.isHidden = true
        }
        if ingridientsNumber4.text !=  nil{
            ingridientsNumber4.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber4.layer.masksToBounds = true
            ingridientsNumber4.layer.cornerRadius = 5
            mesure4.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure4.layer.masksToBounds = true
            mesure4.layer.cornerRadius = 5
        } else {
            ingridientsNumber4.isHidden = true
            mesure4.isHidden = true
        }
        if ingridientsNumber5.text !=  nil{
            ingridientsNumber5.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber5.layer.masksToBounds = true
            ingridientsNumber5.layer.cornerRadius = 5
            mesure5.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure5.layer.masksToBounds = true
            mesure5.layer.cornerRadius = 5
        } else {
            ingridientsNumber5.isHidden = true
            mesure5.isHidden = true
        }
        if ingridientsNumber6.text !=  nil{
            ingridientsNumber6.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber6.layer.masksToBounds = true
            ingridientsNumber6.layer.cornerRadius = 5
            mesure6.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure6.layer.masksToBounds = true
            mesure6.layer.cornerRadius = 5
        } else {
            ingridientsNumber6.isHidden = true
            mesure6.isHidden = true
        }
        if ingridientsNumber7.text !=  nil{
            ingridientsNumber7.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber7.layer.masksToBounds = true
            ingridientsNumber7.layer.cornerRadius = 5
            mesure7.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure7.layer.masksToBounds = true
            mesure7.layer.cornerRadius = 5
        } else {
            ingridientsNumber7.isHidden = true
            mesure7.isHidden = true
        }
        if ingridientsNumber8.text !=  nil{
            ingridientsNumber8.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber8.layer.masksToBounds = true
            ingridientsNumber8.layer.cornerRadius = 5
            mesure8.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure8.layer.masksToBounds = true
            mesure8.layer.cornerRadius = 5
        } else {
            ingridientsNumber8.isHidden = true
            mesure8.isHidden = true
        }
        if ingridientsNumber9.text !=  nil{
            ingridientsNumber9.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber9.layer.masksToBounds = true
            ingridientsNumber9.layer.cornerRadius = 5
            mesure9.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure9.layer.masksToBounds = true
            mesure9.layer.cornerRadius = 5
        } else {
            ingridientsNumber9.isHidden = true
            mesure9.isHidden = true
        }
        if ingridientsNumber10.text !=  nil{
            ingridientsNumber10.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            ingridientsNumber10.layer.masksToBounds = true
            ingridientsNumber10.layer.cornerRadius = 5
            mesure10.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
            mesure10.layer.masksToBounds = true
            mesure10.layer.cornerRadius = 5
        } else {
            ingridientsNumber10.isHidden = true
            mesure10.isHidden = true
        }
    }
}



