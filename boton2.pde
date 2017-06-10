// variable global que me indica el estado de la aplicacion
int estado, cuentaClics=0;
boolean aleatorio = true;
// localización del botón
Boton b, b1, b2;

void setup()
{    
  estado=0;
  size(500, 500);
  b=new Boton(250, 250, 50, 50, 0);
  b1=new Boton(310, 310, 50, 50, "boton.jpg");
  b2=new Boton(150, 150, 50, 50, #002EB8);
}
void draw()
{  
  if (estado==0) 
  { 
    background(255);
  } else 
  { 
    background(#FF0A0A);
  }
  
  if (aleatorio) b1.dibujar();
  else b.dibujar();
  b2.dibujar();
}

void mousePressed ()
{   /*si mouseX y mouseY estan dentro de las dimensiones del boton entonces
 pasamos al estado=1 y sino nos quedamos como estamos */
 cuentaClics ++;
  if (b.pertenece(mouseX, mouseY)==true)
  { if (estado == 1 ){
    System.out.println(cuentaClics);
    System.exit(0);
  }else {
  estado = 1;}
    
  } else { 
    if (b1.pertenece(mouseX, mouseY)==true)
    { 
      b1.colorBoton=0;
    } else {
      if (b2.pertenece(mouseX, mouseY)) {
        estado = 0;
      } else {
        estado = 1;
      }
    }
  }
  if (estado == 0) {
    b.colorBoton=0;
  } else {
    b.colorBoton=255;
  }
  if ((int)(Math.random()*2)==0) aleatorio = (! aleatorio);
}