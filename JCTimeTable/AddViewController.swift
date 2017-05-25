//
//  AddViewController.swift
//  JCTimeTable
//
//  Created by Mindrose on 24/05/17.
//  Copyright © 2017 Mindrose. All rights reserved.
//

import UIKit

class AddViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var textArray = [String]()
    
    
    @IBOutlet var displayTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let allText = textArray [indexPath.row]
        
        print(allText)
        
        cell.textLabel?.text = allText
        
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
