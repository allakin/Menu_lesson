//
//  Second.swift
//  Menu-lesson
//
//  Created by Павел Анплеенко on 27/11/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import Foundation
class Second: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//--------Старт--------------
		//открытие свайпом меню
		self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
		//--------Конец--------------
		
	}
	
}
