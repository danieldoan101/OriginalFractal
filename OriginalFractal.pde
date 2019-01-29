public void setup(){
	size(500, 500);
}

public void draw() {
	
}

public void fractal(size, length, angle){
	rect(250, 450, size, length);
	if(size<=1){
		
	}else{
		fractal(size*3/4, length/2, 15);
		fractal(size*3/4, length/2, -15);
	}
}