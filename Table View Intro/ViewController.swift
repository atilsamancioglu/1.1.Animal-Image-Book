//
//  ViewController.swift
//  Table View Intro
//
//  Created by Atıl Samancıoğlu on 10/12/2016.
//  Copyright © 2016 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var animalArray = [String]()
    
    var animalImageArray = [UIImage]()
    
    var animalchosen = ""
    var imagechosen = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        //example array
        
        animalArray.append("Elephant")
        animalArray.append("Polar Bear")
        animalArray.append("Harp Seal")
        animalArray.append("Dog")
        animalArray.append("Cat")
        animalArray.append("Bird")
        animalArray.append("Tiger")
        animalArray.append("Lion")
        
        animalImageArray.append(UIImage(named: "elephant.jpg")!)
        animalImageArray.append(UIImage(named: "polarbear.jpg")!)
        animalImageArray.append(UIImage(named: "harpseal.jpeg")!)
        animalImageArray.append(UIImage(named: "dog.jpg")!)
        animalImageArray.append(UIImage(named: "cat.jpg")!)
        animalImageArray.append(UIImage(named: "bird.jpg")!)
        animalImageArray.append(UIImage(named: "tiger.jpg")!)
        animalImageArray.append(UIImage(named: "lion.jpg")!)

    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = animalArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            animalArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.animalchosen = animalArray[indexPath.row]
        self.imagechosen = animalImageArray[indexPath.row]
        performSegue(withIdentifier: "imageViewSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "imageViewSegue" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedAnimal = self.animalchosen
            destinationVC.selectedImage = self.imagechosen
            
        }
    }
 
}

