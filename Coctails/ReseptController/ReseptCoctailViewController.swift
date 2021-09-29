//
//  ReseptCoctailViewController.swift
//  Coctails
//
//  Created by Алексей on 29.09.2021.
//

import UIKit



class ReseptCoctailViewController: UIViewController {
    
    let strDrink : String?
    let strInstructions : String?
    init(strDrink : String?, strInstructions : String?){
        self.strDrink = strDrink
        self.strInstructions = strInstructions
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var coctailNameLabel: UILabel!
    @IBOutlet weak var alcoholResept: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coctailNameLabel.text = strDrink
        alcoholResept.text = strInstructions

    }
}
