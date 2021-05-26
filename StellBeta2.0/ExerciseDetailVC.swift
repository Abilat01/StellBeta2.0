//
//  ExerciseDetailVC.swift
//  StellBeta2.0
//
//  Created by Danya on 26.05.2021.
//

import UIKit

class ExerciseDetailVC: UIViewController {
    
    var exercisesTitle = ""
    var exercisesDescroption = ""
    
    
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var exerciseDetail: UILabel!
    @IBOutlet weak var descriptionDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDetail.image = UIImage(named: exercisesTitle)
        exerciseDetail.text = exercisesTitle
        
//        descriptionDetail.text = exercisesDescroption
//        descriptionDetail.numberOfLines = 0

        
    }
}


