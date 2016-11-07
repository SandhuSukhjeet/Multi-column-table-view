//
//  HistoryTableViewCell.swift
//  Dummy
//
//  Created by sukhjeet singh sandhu on 07/11/16.
//  Copyright © 2016 sukhjeet singh sandhu. All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reasonLabel: UILabel!
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var ValueLabel: UILabel!
    
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

    func configureCell(data: [String]) {
        self.nameLabel.font = self.nameLabel.font.withSize(17)
        self.nameLabel.text = data[0]
        self.reasonLabel.font = self.reasonLabel.font.withSize(17)
        self.reasonLabel.text = data[1]
        self.actionLabel.font = self.actionLabel.font.withSize(17)
        self.actionLabel.text = data[2]
        self.timeLabel.font = self.timeLabel.font.withSize(17)
        self.timeLabel.text = data[3]
        self.ValueLabel.font = self.ValueLabel.font.withSize(17)
        self.ValueLabel.text = data[4]
    }

}
