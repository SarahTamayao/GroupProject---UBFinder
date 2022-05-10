//
//  studyViewController.swift
//  UB Finder
//
//  Created by Eric Xie  on 5/9/22.
//

import UIKit
import Parse

class studyViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var studyTableView: UITableView!
    
    var locName = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        studyTableView.delegate = self
        studyTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let query = PFQuery(className: "studyPlace")
        query.includeKey("locationPlace")
        query.limit = 20
        
        query.findObjectsInBackground { locName, error in
            
            if locName != nil {
                
                self.locName = locName!
                self.studyTableView.reloadData()
                
            }
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return locName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "studyCell") as! studyCell
        
        let post = locName[indexPath.row]
        
        cell.locationName.text = (post["locationPlace"] as! String)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! detailViewController
        
        let post = locName[indexPath.row]
        
        vc.placeName = post["locationPlace"] as! String
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
