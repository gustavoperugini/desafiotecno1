
PImage ciudad;
int c = 100;


float[] x = new float[c];
float[] y = new float[c];

float[] tam = new float[c];
float[] vel = new float[c];
color[] relleno = new color[c];

void setup() {
  size( 800, 800 );
  noStroke();


  for ( int i = 0; i < c; i++ ) {
    x[i] = random( width );
    y[i] = -100;
    tam[i] = random( 1, 11);
    vel[i] = random( 32, 55 );
    relleno[i] = color(#B0F0FC );
  }
}

void draw() {
  float aux =map(mouseX, 0, width, 50, 200);
  background(aux);

   //Edición de imagen.
    ciudad = loadImage( "ciudad.png" );
    ciudad.resize(800, 800);
    image (ciudad, 0, 150);
  //actualizar
  for ( int i = 0; i < c; i++ ) {
    y[i] = y[i] + vel[i];
    if ( y[i] > height + tam[i]/2 ) {
      reciclar( i );
      
    }
  }

 
  for ( int variablelarga = 0; variablelarga < c; variablelarga++ ) {
    fill( relleno[variablelarga] );
    ellipse( x[variablelarga], y[variablelarga], tam[variablelarga], tam[variablelarga] );
  }
}

void reciclar( int a ) {  //funcion con parametros
  x[a] = random( width );
  y[a] = -100;
  tam[a] = random( 1, 11 );
  vel[a] = random( 32,55 );
  relleno[a] = color( #B0F0FC );
}
