//
//  BackTableVC.swift
//  Menu-lesson
//
//  Created by Павел Анплеенко on 26/11/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
	
	var tableArray	 = [String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableArray = ["First", "Second", "Three"]
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tableArray.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: tableArray[indexPath.row] , for: indexPath) as UITableViewCell
		
		cell.textLabel?.text = tableArray[indexPath.row]
		
		return cell
	}

	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print("Выбран пункт: \(tableArray[indexPath.row])")
	}
	
}
