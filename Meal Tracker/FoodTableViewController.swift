//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Vladimir Pisarenko on 18.05.2022.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        
        
        let breakfast = Meal(name: "Breakfast", food: [egg, sandwich, coffee])
        let lunch = Meal(name: "Lunch", food: [borsh, grecha, tea])
        let dinner = Meal(name: "Dinner", food: [potato, salad, desert])
        
        return [breakfast, lunch, dinner]

    }
    
    let egg = Food(name: "Egg", description: "Fried egg")
    let sandwich = Food(name: "Sandwich", description: "Bread with meat")
    let coffee = Food(name: "Coffee", description: "Drinks")
    
    let borsh = Food(name: "Borsh", description: "Ukrainian first food")
    let grecha = Food(name: "Grecha", description: "Best for sportsmen")
    let tea = Food(name: "Tea", description: "Drinks")
    
    let potato = Food(name: "Potato", description: "Pureshka from potato")
    let salad = Food(name: "Salad", description: "Tomato with cucumber")
    let desert = Food(name: "Desert", description: "Napoleon")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
   
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(food.name)"
        content.secondaryText = "\(food.description)"
        cell.contentConfiguration = content
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
