//
//  HistoryTableView.swift
//  Dummy
//
//  Created by sukhjeet singh sandhu on 07/11/16.
//  Copyright © 2016 sukhjeet singh sandhu. All rights reserved.
//

import UIKit

class HistoryTableView: UITableView {

    func drawLine(for lineNo: CGFloat) -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: self.bounds.minX + ((self.frame.width / 5) * lineNo), y: self.bounds.minY))
        path.addLine(to: CGPoint(x: self.bounds.minX + ((self.frame.width / 5) * lineNo), y: self.bounds.maxY))
        path.lineWidth = 0.5
        UIColor.black.set()
        return path
    }
    override func draw(_ rect: CGRect) {
        for i in 0...4 {
            let lineNo = CGFloat(i)
            let line = drawLine(for: lineNo)
            line.stroke()
        }
    }
}
