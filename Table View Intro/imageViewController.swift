//
//  imageViewController.swift
//  Table View Intro
//
//  Created by Atıl Samancıoğlu on 10/12/2016.
//  Copyright © 2016 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var animalLabel: UILabel!
    
    var selectedAnimal = ""
    var selectedImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedImage
        animalLabel.text = selectedAnimal
    
    }

   
}
