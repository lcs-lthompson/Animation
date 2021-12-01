//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 900
let preferredHeight = 900
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

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

print(p.currentHeading) // direction
print(p.currentPosition()) //direction
canvas.highPerformance = true
// teach the computer to draw a window
func drawWindow() {
    print("Start of window: \(p.currentPosition())")
    p.addLine(distance: 40)
    p.turn(degrees: 90)
    p.addLine(distance: 80)
    p.turn(degrees: 90)
    p.addLine(distance: 40)
    p.turn(degrees: 90)
    p.addLine(distance: 60)
    p.turn(degrees: 90)
    p.addLine(distance: 40)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 40)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: 180)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
    p.addLine(distance: 40)
    p.goto(dx: -40, dy: 0);    print("End of window: \(p.currentPosition())")
}

// Nudge everything a bit to the right
p.goto(dx: 40, dy: 0)

// Draw 1 window
p.goto(dx: -380, dy: 160)
drawWindow()
    //draw 2 window
p.goto(dx: 60, dy: 0)
drawWindow()

    //draw 3 window
p.goto(dx: 60, dy: 0)
drawWindow()

    //draw 4 window
p.goto(dx: 120, dy: 0)
drawWindow()

    //window 5
p.goto(dx: 60, dy: 0)
drawWindow()
    //window 6
p.goto(dx: 60, dy: 0)
drawWindow()

p.goto(dx: -400, dy: -160)
p.turn(degrees: 90)
p.addLine(distance: 280)

p.turn(degrees: -90)
p.addLine(distance: 460)

p.turn(degrees: 90)
p.addLine(distance: 20)
p.turn(degrees: 90)
p.addLine(distance: 480)
p.turn(degrees: 90)
p.addLine(distance: 300)

    //bottom line
p.addLine(distance: 0)
p.turn(degrees: 90)
p.addLine(distance: 520)

    //big opning door
p.turn(degrees: 90)
p.addLine(distance: 140)
p.turn(degrees: 90)
p.addLine(distance: 280)
p.turn(degrees: 90)
p.addLine(distance: 140)

    //make tiny brick
func drawBrick() {
    p.turn(degrees: 270)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
    p.addLine(distance: 10)
    p.turn(degrees: 90)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
    p.addLine(distance: 10)
    p.turn (degrees: 90)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
}

//bricks
p.goto(dx: 0, dy: 10)
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()

    //draw 2nd level of bricks
p.goto(dx: 220, dy: 10)
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()

    //draw 3rd level of bricks
p.goto(dx: 220, dy: 10)
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()
drawBrick()

    //draw bottom windows above the bricks
p.goto(dx: 0, dy: 10)
p.turn(degrees: 90)
drawWindow()
p.goto(dx: 40, dy: 0)
drawWindow()

for i in 1 ... 3 {
    p.goto(dx: 40, dy: 0)
    drawWindow()
}

// 3D angle for the roof on the right side

p.goto(dx: 340, dy: 160)




    //add roof
func roof() {
    p.goto(dx: -80, dy: 170)
    p.turn(degrees: -60)
    p.addLine(distance: 80)
    p.turn(degrees: 180)
    p.addLine(distance: 116)
    p.turn(degrees: 60)
    p.addLine(distance: 460)
    p.turn(degrees: 110)
    p.addLine(distance: 110)
}

roof()

    //back wall
p.turn(degrees: 180)
p.addLine(distance: 110)
p.turn(degrees: 130)
p.addLine(distance: 50)
p.turn(degrees: 30)
p.addLine(distance: 358)
p.turn(degrees: 90)
p.addLine(distance: 605)

    //right cordoor of the building/uper and lower haddin

p.turn(degrees: 90)
p.addLine(distance: 140)
p.turn(degrees: -40)
p.addLine(distance: 28)
p.turn(degrees: -50)
p.addLine(distance: 100)
p.turn(degrees: 90)
p.addLine(distance: 120)
p.turn(degrees: 180)
p.addLine(distance: 120)
p.turn(degrees: -160)
p.addLine(distance: 127)
p.turn(degrees: 70)
p.addLine(distance: 136)
p.turn(degrees: 180)
p.addLine(distance: 40)
p.turn(degrees: -90)
p.addLine(distance: 120)
p.turn(degrees: 90)
p.addLine(distance: 40)
p.turn(degrees: 180)
p.addLine(distance: 20)
p.turn(degrees: -81)
p.addLine(distance: 120)
p.turn(degrees: -99)
p.addLine(distance: 140)
p.turn(degrees: -90)
p.addLine(distance: 280)
p.turn(degrees: 90)

func upperandlower () {
    p.turn(degrees: 90)
    p.addLine(distance: 280)
    p.turn(degrees: -90)
    p.addLine(distance: 100)
    p.turn(degrees: -90)
    p.addLine(distance: 280)
    p.turn(degrees: -90)
    p.addLine(distance: 100)
    p.turn(degrees: 180)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
    p.addLine(distance: 280)
    p.turn(degrees: 90)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
    p.addLine(distance: 100)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 100)
    p.turn(degrees: 90)
    p.addLine(distance: 40)
    p.turn(degrees: 90)
    p.addLine(distance: 100)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 100)
    p.turn(degrees: 90)
    p.addLine(distance: 40)
    p.turn(degrees: 90)
    p.addLine(distance: 100)
    p.turn(degrees: 90)
    p.addLine(distance: 20)
    p.turn(degrees: 90)
    p.addLine(distance: 100)
    p.turn(degrees: 90)
    p.addLine(distance: 140)
    p.turn(degrees: 90)
    p.addLine(distance: 100)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 280)
    
}

upperandlower()

    //build second half roof over upper and lower
p.turn(degrees: -90)
p.addLine(distance: 20)
p.turn(degrees: 90)
p.addLine(distance: 20)
p.turn(degrees: 30)
p.addLine(distance: 118)
p.turn(degrees: 60)
p.addLine(distance: 280)
p.turn(degrees: 120)
p.addLine(distance: 115)
p.turn(degrees: 60)
p.addLine(distance: 280)

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
