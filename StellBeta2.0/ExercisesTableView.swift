//
//  ExercisesTableView.swift
//  StellBeta2.0
//
//  Created by Danya on 26.05.2021.
//

import UIKit

class ExercisesTableView: UITableViewController {
    
    let exercisesNameArray = ["Боковая планка", "Выпады с гирями", "Жим гирь стоя", "Жим лежа на полу", "Махи гирями",
                              "Молотки", "Обратные скручивания", "Приседания на одной ноге", "Приседания плие", "Русские махи гирей",
                              "Рывок гири в стойку", "Сгибания обратным хватом", "Скручивания", "Становая тяга", "Тяга к подбородку",
                              "Тяга к подбородку из приседа"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath) as! ExercisesCell

        

        return cell
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
