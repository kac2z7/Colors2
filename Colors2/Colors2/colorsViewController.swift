//
//  colorsViewController.swift
//  Colors2
//
//  Created by Keith on 10/20/17.
//  Copyright © 2017 Keith. All rights reserved.
//

import UIKit

class colorsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var colors = [Color(name: "red", uicolor: UIColor.red),
                  Color(name: "orange", uicolor: UIColor.orange),
                  Color(name: "yellow", uicolor: UIColor.yellow),
                  Color(name: "green", uicolor: UIColor.green),
                  Color(name: "blue", uicolor: UIColor.blue),
                  Color(name: "purple", uicolor: UIColor.purple),
                  Color(name: "brown", uicolor: UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        //let color = colors[indexPath.row]
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uicolor
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

