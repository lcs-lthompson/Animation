////: [Previous](@previous) / [Next](@next)
///*:
//## Canvas size
// 
// Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
// */
//let preferredWidth = 400
//let preferredHeight = 600
///*:
// ## Required code
// 
// Lines 16 to 30 are required to make the playground run.
// 
// Please do not remove.
// */
//import Cocoa
//import PlaygroundSupport
//import CanvasGraphics
//
//// Create canvas
//let canvas = Canvas(width: preferredWidth, height: preferredHeight)
//
//// Create a turtle that can draw upon the canvas
//let turtle = Tortoise(drawingUpon: canvas)
//
//// Create a pen that can draw upon the canvas
//let p = Pen(drawingUpon: canvas)
//
//// Show the canvas in the playground's live view
//PlaygroundPage.current.liveView = canvas
//
///*:
// ## Optional code
// 
// Below are two generally helpful configurations.
// 
// If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
// 
// If you do not wish to see a grid, comment out the code on line 48.
// 
// */
//
//
//
//// Show a grid
//canvas.drawAxes(withScale: true, by: 50, color: .black)
//
///*:
// ## Add your code
// 
// Beginning on line 61, you can add your own code.
//  
// [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
//
// */
//canvas.highPerformance = true
//
////add the abilyty to draw a tilted rectangle
//extension {
//    func drawTiltedRectangle(xPosition: int, yPosition: int){var tringleVerticies: [Point] = []
//    tringleVerticies.append(Point(x: 0, y: 50))
//    tringleVerticies.append(Point(x: 50, y: 50))
//    tringleVerticies.append(Point(x: 25, y: 60))
//    for xPosition in stride(from: 0,
//                            through: 350,
//                            by: 50){
//        <#function body#>
//    }
//
//}
////costum shape
//
//for yPosition in stride(from: 0,
//                        through: 550,
//                        by: 50){
//
//        //draw the anchor
//    canvas.fillColor = .red
//    //canvas.drawEllipse(at: (x: xPosition, y: yPosition), width: 5, height: 5)
//
//
////draw the tilted rectangle
//    var rectangleVerticies: [Point] = []
//    rectangleVerticies.append(Point(x: 0,
//                        y: yPosition + 30))
//
//
//}
//}
//
//
//
//
//
//    
//
//canvas.highPerformance = false
///*:
// ## Show the Live View
// Don't see any results?
// 
// Remember to show the Live View (1 then 2):
// 
// ![timeline](timeline.png "Timeline")
//
// ## Use source control
// To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
// 
// Please commit and push your work often.
// 
// ![source_control](source-control.png "Source Control")
// */
