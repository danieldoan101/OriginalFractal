public void setup(){
	size(1024, 1024);
	noFill();
	fractal(500,500,512);
}

public void draw() {
}

public void fractal(int x, int y, int len){
	ellipse(x, y, len,len);
	if(len<8){
		
	}else{
		fractal(x+len/2,y,len/2);
		fractal(x-len/2,y,len/2);
		fractal(x,y+len/2,len/2);
		fractal(x,y-len/2,len/2);
	}
}