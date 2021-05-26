//
//  ExercisesTableView.swift
//  StellBeta2.0
//
//  Created by Danya on 26.05.2021.
//

import UIKit

class ExercisesTableView: UITableViewController {
    
    let exercisesNameArray = ["Тяга к подбородку из приседа", "Рывок гири в стойку", ]

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
