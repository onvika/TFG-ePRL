//
//  CalendarViewController.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 26/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import JTAppleCalendar

class CalendarioViewController: UIViewController
{

    var calendarioView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension CalendarioViewController: JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource
{
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath)
    {
        // This function should have the same code as the cellForItemAt function
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "customCell", for: indexPath) as! CalendarCell
        
        cell.dateLabel.text = cellState.text
    }
    
    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters
    {
        let formatter = DateFormatter()
        formatter.dateFormat =  "yyyy MM dd"
        formatter.timeZone = Calendar.current.timeZone
        formatter.locale = Calendar.current.locale
        
        let startDate = formatter.date(from: "2016 10 01")!
        let endDate = formatter.date(from: "2016 12 01")!
        let parameters = ConfigurationParameters(startDate: startDate,
                                                 endDate: endDate)
        return parameters
    }
    
  
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell
    {
            let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "customCell", for: indexPath) as! CalendarCell
        
            cell.dateLabel.text = cellState.text
        
        return cell
    }

  
    
}













