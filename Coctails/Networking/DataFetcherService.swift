//
//  DataFetcherService.swift
//  Papa Johns Codes
//
//  Created by Aleksei Elin on 19.09.2019.
//  Copyright © 2019 Aleksei Elin. All rights reserved.
//

import Foundation
import Alamofire

class DataFetcherService {
    
    var networkDataFetcher: DataFetcher
    
    init(networkDataFetcher: DataFetcher = NetworkDataFetcher()) {
        self.networkDataFetcher = networkDataFetcher
    }


    func myJson1(completion: @escaping (All_Coctails?) -> Void) {
        
        let urlCoctails = "http://www.thecocktaildb.com/api/json/v1/1/search.php?i=vodka"
        let params: [String : String] = ["i" : "vodka"]


        networkDataFetcher.genericJSONDataWith(type: .GET, urlString: urlCoctails, parameters: params,
                                                response: completion)
        
    }
    static let shared = DataFetcherService()
    
    
    
    func myJson2(completion: @escaping (All_Coctails?) -> Void) {
        let urlCoctails = "https://www.thecocktaildb.com/api/json/v1/1/search.php"
        let characters = ("a"..."z").characters
//        DispatchQueue.main.async {
            for char in characters {
                let params: [String : String] = ["f" : "\(char)"]
                
                AF.request(urlCoctails, method: .get, parameters: params).responseJSON { response in
                    if let response = response.data,
                       let data = try? JSONDecoder().decode(All_Coctails?.self, from: response) {
                        completion(data)
                    }
                }
            }
//        }
    }

    

    //MARK: - Create User Method
    func myJson (completion: @escaping (Drinks?) -> Void) {
        
       
//        let url = URL(string: "http://www.thecocktaildb.com/api/json/v1/1/search.php?f=a")!
//        func myJson<T:Codable> (data: T?) {
           // prepare json data
//           let jsonBody = try? JSONEncoder().encode(data)
        let characters = "a"
           // create post request
           let url = URL(string: "http://www.thecocktaildb.com/api/json/v1/1/search.php?f=\(characters)")!
           var request = URLRequest(url: url)
           request.httpMethod = "GET"

           // insert json data to the request
//           request.httpBody = jsonBody
           request.addValue("application/json", forHTTPHeaderField: "Content-Type")

           let task = URLSession.shared.dataTask(with: request) { data, response, error in
               guard let data = data, error == nil else {
                   print(error?.localizedDescription ?? "No data")
                   return
               }
               let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
               if let responseJSON = responseJSON as? [String: Any] {
                   print(responseJSON)
               }
           }
           task.resume()
       
    }
}

extension ClosedRange where Bound == Unicode.Scalar {
    static let asciiPrintable: ClosedRange = " "..."~"
    var range: ClosedRange<UInt32>  { lowerBound.value...upperBound.value }
    var scalars: [Unicode.Scalar]   { range.compactMap(Unicode.Scalar.init) }
    var characters: [Character]     { scalars.map(Character.init) }
    var string: String              { String(scalars) }
}

extension String {
    init<S: Sequence>(_ sequence: S) where S.Element == Unicode.Scalar {
        self.init(UnicodeScalarView(sequence))
    }
}
