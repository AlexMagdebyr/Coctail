
import Foundation

class All_Coctails : Codable {
	var drinks : [Drinks]?

	enum CodingKeys: String, CodingKey {

		case drinks = "drinks"
	}

    required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		drinks = try values.decodeIfPresent([Drinks].self, forKey: .drinks)
	}

}
