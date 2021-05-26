//
//  ExercisesTableView.swift
//  StellBeta2.0
//
//  Created by Danya on 26.05.2021.
//

import UIKit

class ExercisesTableView: UITableViewController {
    
    
    public let exercisesNameArray = ["Боковая планка", "Выпады с гирями", "Жим гирь стоя", "Жим лежа на полу", "Махи гирями",
                              "Молотки", "Обратные скручивания", "Приседания на одной ноге", "Приседания плие", "Русские махи гирей",
                              "Рывок гири в стойку", "Сгибания обратным хватом", "Скручивания", "Становая тяга", "Тяга к подбородку",
                              "Тяга к подбородку из приседа"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisesNameArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath) as! ExercisesCell
        
        cell.exercisesImege.image = UIImage(named: exercisesNameArray[indexPath.row])
        
        cell.exercisesNameLabel.text = exercisesNameArray[indexPath.row]
        cell.exercisesImege.layer.cornerRadius = cell.exercisesImege.frame.size.height / 2
        
        

        return cell
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! ExerciseDetailVC
                detailVC.exercisesTitle = exercisesNameArray[indexPath.row]
                //detailVC.exerciseDetail = Создать неизменяемый массив с описанием
            }
        }
        
    }
    

}
