//
//  ViewController.swift
//  Menu-lesson
//
//  Created by Павел Анплеенко on 26/11/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var Open: UIBarButtonItem!
	
	var varView = Int()
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
		//--------Старт--------------
		//Указали что сами создали выпадающую таблицу
		Open.target = self.revealViewController()
		Open.action = Selector("revealToggle:")
		//--------Конец--------------
		
		//--------Старт--------------
		//открытие свайпом меню
		self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
		//--------Конец--------------

		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

