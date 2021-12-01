//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)
// Begin writing your code below (you can remove the examples shown)
// create a pen








print(p.currentHeading) // direction
print(p.currentPosition()) //direction


// starting/center shape


p.goto(dx: 0, dy: 0)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)

p.goto(dx: -40, dy: -60)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)
p.turn(degrees: 45)
p.addLine(distance: 28)
p.turn(degrees: 45)
p.addLine(distance: 20)


// make triangle

p.addLine(distance: 0)
p.turn(degrees: 90)
p.addLine(distance: -40)
p.addLine(distance: 240)
p.turn(degrees: 139)
p.addLine(distance: 184)
p.turn(degrees: 85)
p.addLine(distance: 174)
p.turn(degrees: 136)
p.addLine(distance: 25)
p.addLine(distance: -25)
p.turn(degrees: -44)
p.addLine(distance: 173)
p.turn(degrees: 84.5)
p.addLine(distance: 184)

// add top triangle
p.turn(degrees: 10)
p.addLine(distance: 160)
p.turn(degrees: -141)
p.addLine(distance: 240)
p.turn(degrees: -139)
p.addLine(distance: 151)

//add bottom triangle

p.goto(dx: -3, dy: -266)
p.turn(degrees: 91)
p.turn(degrees: 10)
p.addLine(distance: 160)
p.turn(degrees: -141)
p.addLine(distance: 240)
p.turn(degrees: -139)
p.addLine(distance: 151)

//add left triangle

p.goto(dx: -120, dy: 126)
p.turn(degrees: 179.3)
p.turn(degrees: 10)
p.addLine(distance: 160)
p.turn(degrees: -141)
p.addLine(distance: 240)
p.turn(degrees: -139)
p.addLine(distance: 151)

// right trangle

p.goto(dx: 244, dy: 0)
p.turn(degrees: -270)
p.turn(degrees: 10)
p.addLine(distance: 160)
p.turn(degrees: -141)
p.addLine(distance: 240)
p.turn(degrees: -139)
p.addLine(distance: 151)

