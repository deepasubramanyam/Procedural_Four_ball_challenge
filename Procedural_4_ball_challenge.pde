import processing.core.PApplet;

public class Procedural_4_ball_challenge extends PApplet {

    public static final int height= 500;
    public static final int width = 500;
    public static final int diameter = 20;
    int[] ball_num = new int[4];
    
    @Override
    public void settings() {
        super.settings();
        size(width , height);
        smooth(0);        
    }

    @Override
    public void draw() {
        for (int unit = 1; unit <= 4; unit++) {
            create_ball(ball_num[unit-1]+=unit,height*unit/5);
        }
    }

    private void create_ball(int x_position, int y_position) {
        ellipse(x_position,y_position,diameter,diameter);
    }
    
    public static void main(String[] args) {
        PApplet.main("Procedural_4_ball_challenge",args);
    }
}
