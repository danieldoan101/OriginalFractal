public void setup(){
	size(1024, 1024);
	noFill();
	int[] rgb = {color(255,0,0), color(255, 255, 0), color(0, 255, 255), color(0, 255, 0), color(0,0,255), color(75, 0, 130), color(238, 130, 238)};
	fractal(512,512,512,rgb,0);
}

public void draw() {
}

public void fractal(int x, int y, int len, int[]colors, int whichColor){
	if(whichColor > 6){whichColor=0;}
	stroke(colors[whichColor]);
	ellipse(x, y, len,len);
	if(len<8){
		
	}else{
		fractal(x+len/2,y,len/2, colors, whichColor+1);
		fractal(x-len/2,y,len/2, colors, whichColor+1);
		fractal(x,y+len/2,len/2, colors, whichColor+1);
		fractal(x,y-len/2,len/2, colors, whichColor+1);
	}
}