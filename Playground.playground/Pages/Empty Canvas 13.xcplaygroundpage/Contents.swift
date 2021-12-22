//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
//canvas.translate(to: Point(x: canvas.width / 2,
//     y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// Begin writing your code below (you can remove the examples shown)
canvas.highPerformance = true

// make the rectangle
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//second top half rectangle

canvas.fillColor = .orange
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 600)


//make the custom shape
for xPosition in stride(from: 0, to: 150, by: 50) {
    
    for yPosition in stride(from: 0, to: 160, by: 50)
            
    {
        var AarchVertices: [Point] = []
        //A
        
        AarchVertices.append(Point(
            x: xPosition + 60,
            y: yPosition + 0))
        
        AarchVertices.append(Point(
            x: xPosition + 60,
            y: yPosition + 200))
        
        AarchVertices.append(Point(
            x: xPosition + 0,
            y: yPosition + 200))
        
        AarchVertices.append(Point(
            x: xPosition + 0,
            y: yPosition + 220))
        
        AarchVertices.append(Point(
            x: xPosition + 80,
            y: yPosition + 220))
        
        AarchVertices.append(Point(
            x: xPosition + 80,
            y: yPosition + 0))
        
        canvas.fillColor = .yellow
        canvas.drawCustomShape(with:AarchVertices)
        
    }
    
}









for xPosition in stride(from: 223,
                        through: 400, by: 50){
    
    for yPosition in stride(from:
                                0, to:400, by: 50)
    {
        
        
        
        canvas.fillColor = .yellow
        canvas.drawEllipse(at: Point(x: xPosition, y: yPosition),
                           width: 50,
                           height: 50)
        
        canvas.fillColor = .black
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 200)
        
    }
    
}

// creat bottom half costum shape

for xPosition in stride(from: 0, to: 150, by: 50) {
    
    for yPosition in stride(from: 0, to: 160, by: 50)
            
    {
        var AarchVertices: [Point] = []
        //A
        
        AarchVertices.append(Point(
            x: xPosition + 0,
            y: yPosition + 0))
        
        AarchVertices.append(Point(
            x: xPosition + 0,
            y: yPosition + 25))
        
        AarchVertices.append(Point(
            x: xPosition + 400,
            y: yPosition + 25))
        
        AarchVertices.append(Point(
            x: xPosition + 400,
            y: yPosition + 0))
        
        canvas.fillColor = .orange
        canvas.drawCustomShape(with:AarchVertices)
        
    }
    
}











//letters
canvas.fillColor = .black
canvas.drawText(message: "The Rolling Stones", at: Point(x: 25, y: 500 ))

canvas.fillColor = .black
canvas.drawText(message: "TIME: 9:00", at: Point(x: 25, y: 450 ))

canvas.fillColor = .black
canvas.drawText(message: "DAY: 1998 Saturday August 22", at: Point(x: 25, y: 400 ))

canvas.fillColor = .black
canvas.drawText(message: "TICKET: 37.50 each", at: Point(x: 170, y: 450 ))


// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .white)

canvas.highPerformance = false

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

