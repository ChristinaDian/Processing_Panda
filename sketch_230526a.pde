import processing.core.PApplet;
import processing.core.PImage;

    private PImage pandaImage;
    private float pandaX1;
    private float pandaY1;
    private float speed1;
    private float rotationAngle1;

    private float pandaX2;
    private float pandaY2;
    private float speed2;
    private float rotationAngle2;


    public void settings() {
        size(800, 600);
    }

    public void setup() {
        pandaImage = loadImage("C:\\Users\\krisd\\OneDrive\\Documents\\Processing\\sketch_230526a\\panda.png");
        pandaX1 = random((2 * width) / 3);
        pandaY1 = random(height/2);
        speed1 = 2;
        rotationAngle1 = 0;

        pandaX2 = random((2 * width) / 3);
        pandaY2 = random(height/2);
        speed2 = 3;
        rotationAngle2 = 0;

    }

    public void draw() {
        background(255);

        //Change direction
        pandaX1 += speed1;

        // Check if panda1 is inside the canvas
        if (pandaX1 > width - pandaImage.width / 2) {
            pandaX1 = width - pandaImage.width / 2;
            speed1 *= -1; // Change direction
        } else if (pandaX1 < pandaImage.width / 2) {
            pandaX1 = pandaImage.width / 2;
            speed1 *= -1;
        }

        pushMatrix();
        translate(pandaX1, pandaY1);

        // Rotate panda
        rotationAngle1 += 0.01f;
        rotate(rotationAngle1);

        image(pandaImage, 0, 0);

        popMatrix();

        pandaX2 += speed2;

       // Check if panda2 is inside the canvas
        if (pandaX2 > width - pandaImage.width / 2) {
            pandaX2 = width - pandaImage.width / 2;
            speed2 *= -1; // Change direction
        } else if (pandaX2 < pandaImage.width / 2) {
            pandaX2 = pandaImage.width / 2;
            speed2 *= -1;
        }

        pushMatrix();
        translate(pandaX2, pandaY2);

        // Rotate panda2
        rotationAngle2 += 0.02f;
        rotate(rotationAngle2);

        image(pandaImage, 0, 0);

        popMatrix();

        delay(10);
    }
