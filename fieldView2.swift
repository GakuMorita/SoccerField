import UIKit




class fieldView2: UIView {
    
    override func draw(_ rect: CGRect) {
         print("fieldView2 draw")
   
        UIColor.black.setStroke()
        
        
        if (fieldH / (fieldV + GSizeV * 2)) > (self.frame.width / self.frame.height)
        {
            //Touch line
            let Touchline = UIBezierPath(rect: CGRect(x: 1,y: (self.frame.height - fieldV * self.frame.width / fieldH) / 2, width: self.frame.width - 2 ,height: fieldV * self.frame.width / fieldH))
            // stroke 設定
            Touchline.lineWidth = lineWidth
            Touchline.stroke()
            
            //Harfway line
            let Harfline = UIBezierPath(rect: CGRect(x: 1,y: (self.frame.height - fieldV * self.frame.width / fieldH) / 2, width: self.frame.width - 2,height: fieldV * self.frame.width / fieldH / 2))
            
            Harfline.lineWidth = lineWidth
            Harfline.stroke()
            
            //Center cercle
            let CenterCircle = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y:self.frame.height / 2.0), radius: 9.15 *  self.frame.width/fieldH,  startAngle: 0, endAngle: 360, clockwise: true)
            CenterCircle.lineWidth = lineWidth
            CenterCircle.stroke()
            
            //Penalty area Upper
            let PenaltyareaU = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 20.16 * self.frame.width/fieldH,y: (self.frame.height - fieldV * self.frame.width / fieldH) / 2, width: 40.32 * self.frame.width/fieldH ,height: 16.5 * self.frame.width/fieldH))
            
            PenaltyareaU.lineWidth = lineWidth
            PenaltyareaU.stroke()
            
            //Goal area Upper
            let GoalareaU = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 9.16 * self.frame.width/fieldH,y: (self.frame.height - fieldV * self.frame.width / fieldH) / 2, width: 18.32 * self.frame.width/fieldH ,height: 5.5 * self.frame.width/fieldH))
            
            GoalareaU.lineWidth = lineWidth
            GoalareaU.stroke()
            
            //Penalty mark Upper
            let PenaltymarkU = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y: (self.frame.height - fieldV * self.frame.width / fieldH) / 2 + 11 * self.frame.width/fieldH), radius: 0.3 *  self.frame.width/fieldH,  startAngle: 0, endAngle: 360, clockwise: true)
            PenaltymarkU.lineWidth = lineWidth
            PenaltymarkU.stroke()
            
            //Penalty arc Upper
            let PenaltyarcU = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y:(self.frame.height - fieldV * self.frame.width / fieldH) / 2 + 11 * self.frame.width/fieldH), radius: 9.15 *  self.frame.width/fieldH,  startAngle: CGFloat(Double.pi * 2.0 * 36.5 / 360.0), endAngle: CGFloat(Double.pi * 2.0 * 143.5 / 360.0), clockwise: true)
            PenaltyarcU.lineWidth = lineWidth
            PenaltyarcU.stroke()
            
            //Goal Upper
            let GoalU = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 3.66 * self.frame.width/fieldH,y:(self.frame.height - fieldV * self.frame.width / fieldH) / 2, width: 7.32 * self.frame.width/fieldH ,height: GSizeV * self.frame.width/fieldH * -1))
            GoalU.lineWidth = 1
            GoalU.stroke()
            
            //Penalty area lower
            let PenaltyareaL = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 20.16 * self.frame.width/fieldH,y:self.frame.height - (self.frame.height - fieldV * self.frame.width / fieldH) / 2 , width: 40.32 * self.frame.width/fieldH ,height: 16.5 * self.frame.width/fieldH * -1))
            PenaltyareaL.lineWidth = lineWidth
            PenaltyareaL.stroke()
            
            //Goal area lower
            let GoalareaL = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 9.16 * self.frame.width/fieldH,y:self.frame.height - (self.frame.height - fieldV * self.frame.width / fieldH) / 2, width: 18.32 * self.frame.width/fieldH ,height: 5.5 * self.frame.width/fieldH * -1))
            GoalareaL.lineWidth = lineWidth
            GoalareaL.stroke()
            
            //Penalty mark lower
            let PenaltymarkL = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y: self.frame.height - (self.frame.height - fieldV * self.frame.width / fieldH) / 2 - 11 * self.frame.width/fieldH), radius: 0.3 *  self.frame.width/fieldH,  startAngle: 0, endAngle: 360, clockwise: true)
            PenaltymarkL.lineWidth = lineWidth
            PenaltymarkL.stroke()
            
            //Penalty arc lower
            let PenaltyarcL = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y:self.frame.height - (self.frame.height - fieldV * self.frame.width / fieldH) / 2 - 11 * self.frame.width/fieldH), radius: 9.15 *  self.frame.width/fieldH,  startAngle: CGFloat(Double.pi * 2.0 * 216.5 / 360.0), endAngle: CGFloat(Double.pi * 2.0 * 323.5 / 360.0), clockwise: true)
            PenaltyarcL.lineWidth = lineWidth
            PenaltyarcL.stroke()
            
            //Goal lower
            let GoalL = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 3.66 * self.frame.width/fieldH,y:self.frame.height - (self.frame.height - fieldV * self.frame.width / fieldH) / 2, width: 7.32 * self.frame.width/fieldH ,height: GSizeV * self.frame.width/fieldH))
            GoalL.lineWidth = 1
            GoalL.stroke()
        }
        else{ 
            //Touch line
            let Touchline = UIBezierPath(rect: CGRect(x: (self.frame.width - fieldH * self.frame.height / (fieldV + GSizeV * 2)) / 2, y: GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: fieldH * self.frame.height / (fieldV + GSizeV * 2), height: fieldV * self.frame.height / (fieldV + GSizeV * 2)))
            
            Touchline.lineWidth = lineWidth
            Touchline.stroke()
            
            //Harfway line
            let Harfline = UIBezierPath(rect: CGRect(x: (self.frame.width - fieldH * self.frame.height / (fieldV + GSizeV * 2)) / 2, y: GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: fieldH * self.frame.height / (fieldV + GSizeV * 2), height: fieldV * self.frame.height / (fieldV + GSizeV * 2) / 2 ))
            
            Harfline.lineWidth = lineWidth
            Harfline.stroke()
            
            //Center cercle
            let CenterCircle = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y:self.frame.height / 2.0), radius: 9.15 *  self.frame.height / (fieldV + GSizeV * 2),  startAngle: 0, endAngle: 360, clockwise: true)
            CenterCircle.lineWidth = lineWidth
            CenterCircle.stroke()
            
            //Penalty area Upper
            let PenaltyareaU = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 20.16 * self.frame.height / (fieldV + GSizeV * 2), y: GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: 40.32 * self.frame.height / (fieldV + GSizeV * 2), height: 16.5 * self.frame.height / (fieldV + GSizeV * 2)))
            
            PenaltyareaU.lineWidth = lineWidth
            PenaltyareaU.stroke()
            
            //Goal area Upper
            let GoalareaU = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 9.16 * self.frame.height / (fieldV + GSizeV * 2), y: GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: 18.32 * self.frame.height / (fieldV + GSizeV * 2), height: 5.5 * self.frame.height / (fieldV + GSizeV * 2)))
            
            GoalareaU.lineWidth = lineWidth
            GoalareaU.stroke()
            
            //Penalty mark Upper
            let PenaltymarkU = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y: GSizeV * self.frame.height / (fieldV + GSizeV * 2) + 11 * self.frame.height / (fieldV + GSizeV * 2)), radius: 0.3 * self.frame.height / (fieldV + GSizeV * 2),  startAngle: 0, endAngle: 360, clockwise: true)
            
            PenaltymarkU.lineWidth = lineWidth
            PenaltymarkU.stroke()
            
            //Penalty arc Upper
            let PenaltyarcU = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y: GSizeV * self.frame.height / (fieldV + GSizeV * 2) + 11 * self.frame.height / (fieldV + GSizeV * 2)), radius: 9.15 *  self.frame.height / (fieldV + GSizeV * 2),  startAngle: CGFloat(Double.pi * 2.0 * 36.5 / 360.0), endAngle: CGFloat(Double.pi * 2.0 * 143.5 / 360.0), clockwise: true)
            PenaltyarcU.lineWidth = lineWidth
            PenaltyarcU.stroke()
            
            //Goal Upper
            let GoalU = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 3.66 * self.frame.height / (fieldV + GSizeV * 2), y: GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: 7.32 * self.frame.height / (fieldV + GSizeV * 2), height: GSizeV * self.frame.height / (fieldV + GSizeV * 2) * -0.9))
            GoalU.lineWidth = 1
            GoalU.stroke()
            
            //Penalty area lower
            let PenaltyareaL = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 20.16 * self.frame.height / (fieldV + GSizeV * 2),y:self.frame.height - GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: 40.32 * self.frame.height / (fieldV + GSizeV * 2) ,height: 16.5 * self.frame.height / (fieldV + GSizeV * 2) * -1))
            PenaltyareaL.lineWidth = lineWidth
            PenaltyareaL.stroke()
            
            //Goal area lower
            let GoalareaL = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 9.16 * self.frame.height / (fieldV + GSizeV * 2),y:self.frame.height - GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: 18.32 * self.frame.height / (fieldV + GSizeV * 2) ,height: 5.5 * self.frame.height / (fieldV + GSizeV * 2) * -1))
            GoalareaL.lineWidth = lineWidth
            GoalareaL.stroke()
            
            //Penalty mark lower
            let PenaltymarkL = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y: self.frame.height - GSizeV * self.frame.height / (fieldV + GSizeV * 2) - 11 * self.frame.height / (fieldV + GSizeV * 2)), radius: 0.3 *  self.frame.height / (fieldV + GSizeV * 2),  startAngle: 0, endAngle: 360, clockwise: true)
            PenaltymarkL.lineWidth = lineWidth
            PenaltymarkL.stroke()
            
            //Penalty arc lower
            let PenaltyarcL = UIBezierPath(arcCenter: CGPoint(x:self.frame.width / 2.0, y: self.frame.height - GSizeV * self.frame.height / (fieldV + GSizeV * 2) - 11 * self.frame.height / (fieldV + GSizeV * 2)), radius: 9.15 *  self.frame.height / (fieldV + GSizeV * 2),  startAngle: CGFloat(Double.pi * 2.0 * 216.5 / 360.0), endAngle: CGFloat(Double.pi * 2.0 * 323.5 / 360.0), clockwise: true)
            PenaltyarcL.lineWidth = lineWidth
            PenaltyarcL.stroke()
            
            let GoalL = UIBezierPath(rect: CGRect(x: self.frame.width/2 - 3.66 * self.frame.height / (fieldV + GSizeV * 2),y:self.frame.height - GSizeV * self.frame.height / (fieldV + GSizeV * 2), width: 7.32 * self.frame.height / (fieldV + GSizeV * 2) ,height: (GSizeV * self.frame.height / (fieldV + GSizeV * 2)) * 0.9))
            GoalL.lineWidth = 1
            GoalL.stroke()
            
            
        }
}
}
