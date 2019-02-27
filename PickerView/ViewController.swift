//
//  ViewController.swift
//  PickerView
//
//  Created by TIPIOS 27/02/2019.
//  Copyright © 2019 Tipios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var imagePicker: UIImagePickerController?
    
    private let  pickerData = ["Daenerys", "Jon Snow", "Cersei", "Arya Stark", "Tyrion", "Sansa Stark", "Khal Drogo", "Joffrey Barathéon", "Petyr Baelish", "Lord Varys", "Robb Stark", "Hodor", "Jagen H'ghar"]

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        
    }

    // Nombre de colonne dans le pickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Nombre d'élément dans le tableau de données
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // récupération de la sélection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = pickerData[row]
        let nomImage =  pickerData[row] + ".jpg"  // le nom du fichier correspond à la sélection
        image.image  = UIImage(named: nomImage)
    }

    
    // Renvoie la données du tableau de données
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }


}

