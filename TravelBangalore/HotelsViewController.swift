//
//  HotelsViewController.swift
//  TravelBangalore
//
//  Created by iOScsebatch on 08/02/17.
//  Copyright © 2017 Sjbit. All rights reserved.
//

import UIKit

class HotelsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

     var titles = ["The Leela Palace","The Oberoi","ITC Windsor","Hilton","Hyatt","The Gateway","La Marvella"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Hcell")
        cell?.textLabel?.text = titles[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "toTLP", sender: self)
        case 1:
            self.performSegue(withIdentifier: "toTO", sender: self)
        case 2:
            self.performSegue(withIdentifier: "toITCW", sender: self)
        case 3:
            self.performSegue(withIdentifier: "toH", sender: self)
        case 4:
            self.performSegue(withIdentifier: "toHY", sender: self)
        case 5:
            self.performSegue(withIdentifier: "toTG", sender: self)
        case 6:
            self.performSegue(withIdentifier: "toLM", sender: self)
        default: "invalid"
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
