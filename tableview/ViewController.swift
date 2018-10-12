//
//  ViewController.swift
//  tableview
//
//  Created by MacOS on 2018/10/12.
//  Copyright © 2018年 MacOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
   
    
      let names=["苹果","香蕉","西瓜"]
      let images=["apple","banana","watermelon"]
      let nums=[0,1,2]
    
       var fruits=[FruitDTO]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        for var i in nums{
            
            var dic = FruitDTO()
            dic.name=names[i]
            dic.image=images[i]
            
            fruits.append(dic)
        
            
        }
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! CustomCell
        
    
        
        cell.label.text=fruits[indexPath.row].name
        cell.label.numberOfLines = 0
        
        cell.imageview.image=UIImage(named: fruits[indexPath.row].image!)
        
        
        
        return cell
        
        
        
        
        
        
        
    }
    

}


class CustomCell:UITableViewCell{
    
    
    
    @IBOutlet weak var imageview: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    
}









