//
//  ViewController.swift
//  Musicplayer
//
//  Created by ddukk17 on 29.10.22.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate

{
    @IBOutlet weak var table: UITableView!
    
   var Bank = Song()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "cell1")
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = table.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        cell.label.text = Bank.list[count].stitle
        cell.img.image = UIImage(named: Bank.list[count].simage)
       
        
        
        if count < 3 {
            count = count + 1
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "view") as! ViewController1
        vc.simg = Bank.list[indexPath.row].simage
        vc.stitle = Bank.list[indexPath.row].stitle
        vc.music = Bank.list[indexPath.row].ssong
        present(vc,animated: true)
    }
    
    


}

