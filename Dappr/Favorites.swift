//
//  Favorites.swift
//  Dapper
//
//  Created by Gargium on 4/5/15.
//  Copyright (c) 2015 rakshitgarg. All rights reserved.
//

import Foundation
import UIKit

class Favorites : UIViewController, FeaturedCellDelegate {

    
    @IBOutlet weak var label: UILabel!
    
    
    func whileIsAFavorite(favoriteCell : FeaturedCell) {
        while (favoriteCell.isFavorite) {
            var name = favoriteCell.name_label.text
            var desc = favoriteCell.desc_label.text
            label.text = name
        }
    }
}