import UIKit

// 設定紅色為最底色
let redScene = CGRect(x: 0, y: 0, width: 180, height: 120)
let showRedScene = UIView(frame:redScene)
showRedScene.backgroundColor = UIColor(red: 209/255, green: 18/255, blue: 53/255, alpha: 1)

// 設定第一個白色區塊
let firstWhiteScene = CGRect(x: 0, y: 0, width: 180, height: 120)
let showFirstWhiteScene = UIView(frame:firstWhiteScene)
showFirstWhiteScene.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let firstWhiteDotnLine = UIBezierPath()
firstWhiteDotnLine.move(to: CGPoint(x: 0, y: 0))
firstWhiteDotnLine.addLine(to: CGPoint(x: 154.33, y: 0))
firstWhiteDotnLine.addLine(to: CGPoint(x: 0, y: 101.679))
firstWhiteDotnLine.close()

let firstWhiteTriangleLayer = CAShapeLayer()
firstWhiteTriangleLayer.path = firstWhiteDotnLine.cgPath
showFirstWhiteScene.layer.mask = firstWhiteTriangleLayer
showFirstWhiteScene
// 設定藍色區塊
let blueScene = CGRect(x: 0, y: 0, width: 180, height: 120)
let showBlueScene = UIView(frame:blueScene)
showBlueScene.backgroundColor = UIColor(red: 1/255, green: 53/255, blue: 128/255, alpha: 1)

let blueDotnLine = UIBezierPath()
blueDotnLine.move(to: CGPoint(x: 0, y: 0))
blueDotnLine.addLine(to: CGPoint(x: 143.1, y: 0))
blueDotnLine.addLine(to: CGPoint(x: 0, y: 95.679))
blueDotnLine.close()

let blueTriangleLayer = CAShapeLayer()
blueTriangleLayer.path = blueDotnLine.cgPath
showBlueScene.layer.mask = blueTriangleLayer


// 設定第二個白色區塊
let secondWhiteScene = CGRect(x: 0, y: 0, width: 180, height: 120)
let showSecondWhiteScene = UIView(frame:secondWhiteScene)
showSecondWhiteScene.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

let secondWhiteDotnLine = UIBezierPath()
secondWhiteDotnLine.move(to: CGPoint(x: 180, y: 120))
secondWhiteDotnLine.addLine(to: CGPoint(x: 26.671, y: 120))
secondWhiteDotnLine.addLine(to: CGPoint(x: 180, y: 17.306))
secondWhiteDotnLine.close()
//let firstWhiteTriangleLayer = CAShapeLayer()
//firstWhiteTriangleLayer.path = firstWhiteDotnLine.cgPath
//showFirstWhiteScene.layer.mask = firstWhiteTriangleLayer

let secondWhiteTriangleLayer = CAShapeLayer()
secondWhiteTriangleLayer.path = secondWhiteDotnLine.cgPath
showSecondWhiteScene.layer.mask = secondWhiteTriangleLayer
showSecondWhiteScene


let greenScene = CGRect(x: 0, y: 0, width: 180, height: 120)
let showGreenScene = UIView(frame:greenScene)
showGreenScene.backgroundColor = UIColor(red: 3/255, green: 149/255, blue: 67/255, alpha: 1)

let greenDotnLine = UIBezierPath()
greenDotnLine.move(to: CGPoint(x: 180, y: 120))
greenDotnLine.addLine(to: CGPoint(x:35.9165 , y: 120))
greenDotnLine.addLine(to: CGPoint(x: 180, y: 23.6605))
greenDotnLine.close()

let greenTriangleLayer = CAShapeLayer()
greenTriangleLayer.path = greenDotnLine.cgPath
showGreenScene.layer.mask = greenTriangleLayer


// rgb(255,206,3)

let yellowScene = CGRect(x: 10, y: 12, width: 60, height: 55)
let showYellowScene = UIView(frame:yellowScene)
showYellowScene.backgroundColor = UIColor(red: 1, green: 206/255, blue: 3/255, alpha: 1)


var points : [CGPoint] = [CGPoint(x:5.04,y:21.65),CGPoint(x:13.447,y:18.568),CGPoint(x:7.701,y:11.606),CGPoint(x:16.647,y:13.054),CGPoint(x:14.962,y:4.275),CGPoint(x:21.869,y:10.047),CGPoint(x:25.008,y:1.711),CGPoint(x:28.055,y:10.077),CGPoint(x:35.212,y:4.177),CGPoint(x:33.534,y:13.199),CGPoint(x:42.298,y:11.462),CGPoint(x:36.677,y:18.636),CGPoint(x:44.978,y:21.663),CGPoint(x:36.577,y:24.822),CGPoint(x:42.384,y:31.518),CGPoint(x:33.531,y:30.107),CGPoint(x:35.036,y:38.953),CGPoint(x:28.285,y:33.186),CGPoint(x:24.941,y:41.73),CGPoint(x:21.956,y:33.301),CGPoint(x:15.011,y:39.001),CGPoint(x:16.507,y:30.156),CGPoint(x:7.531,y:31.738),CGPoint(x:13.381,y:24.828)]


let yellowPath = UIBezierPath()
yellowPath.move(to: points[0])

for i in 1...23{
    yellowPath.addLine(to: points[i])
}

yellowPath.close()


let firstYellowLayer = CAShapeLayer()
firstYellowLayer.path = yellowPath.cgPath
showYellowScene.layer.mask = firstYellowLayer



let outerCircleSize = CGRect(x:13,y:10,width:24,height:24)
let showOuterCircle = UIView(frame:outerCircleSize)
showOuterCircle.backgroundColor = UIColor(red: 1/255, green: 53/255, blue: 128/255, alpha: 1)

let outerCirclePath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width:24 ,height: 24))
let outerCircleLayer = CAShapeLayer()
outerCircleLayer.path = outerCirclePath.cgPath
showOuterCircle.layer.mask = outerCircleLayer


let innerCircleSize = CGRect(x:3,y:3,width:18,height:18)
let showInnerCircle = UIView(frame:innerCircleSize)
showInnerCircle.backgroundColor = UIColor(red: 1, green: 206/255, blue: 3/255, alpha: 1)

let innerCirclePath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width:18 ,height: 18))
let innerCircleLayer = CAShapeLayer()
innerCircleLayer.path = innerCirclePath.cgPath
showInnerCircle.layer.mask = innerCircleLayer


showOuterCircle.addSubview(showInnerCircle)
showYellowScene.addSubview(showOuterCircle)
showBlueScene.addSubview(showYellowScene)
showFirstWhiteScene.addSubview(showBlueScene)
showSecondWhiteScene.addSubview(showGreenScene)
showRedScene.addSubview(showFirstWhiteScene)
showRedScene.addSubview(showSecondWhiteScene)
