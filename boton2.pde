// variable global que me indica el estado de la aplicacion
int estado;
// localización del botón
Boton b,b1;

void setup()
{    estado=0;
     size(500,500);
     b=new Boton(250,250,50,50,0);
     b1=new Boton(310,310,50,50,"boton.jpg");
     
}
void draw()
{  if (estado==0) 
     { background(255); 
       b.dibujar();
       b1.dibujar();
       
       }
   else 
     { background(0); }
}

void mousePressed ()
{   /*si mouseX y mouseY estan dentro de las dimensiones del boton entonces
    pasamos al estado=1 y sino nos quedamos como estamos */
     if (b.pertenece(mouseX,mouseY)==true)
         { //estado=1;
           System.exit(0);}
     
     else { if (b1.pertenece(mouseX,mouseY)==true)
                 { b1.colorBoton=0; }
                 else {estado=0;}
}
}
     
       