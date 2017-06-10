class Boton
{   
  int xBoton;
  int yBoton;
  int anchoBoton;
  int altoBoton;
  color colorBoton;
  PImage imagenBoton;
  boolean esImagen;

  Boton( int x, int y, int ancho, int alto, color c)
  {   
    xBoton=x;
    yBoton=y;
    anchoBoton=ancho;
    altoBoton=alto;
    colorBoton=c;
    esImagen=false;
  }

  Boton( int x, int y, int ancho, int alto, String nombreFichero)
  {   
    xBoton=x;
    yBoton=y;
    anchoBoton=ancho;
    altoBoton=alto;
    esImagen=true;
    imagenBoton=loadImage(nombreFichero);
  }
  void dibujar()
  { 
    if ( esImagen==false)
    {
      fill(colorBoton);
      rect(xBoton, yBoton, anchoBoton, altoBoton);
    } else 
    {    
      imagenBoton.resize(anchoBoton, altoBoton);
      image(imagenBoton, xBoton, yBoton);
    }
  }

  boolean pertenece(int px, int py)
  { 
    boolean siPertenece=false;

    if ((px>=xBoton)&&(px<=(xBoton+anchoBoton)))
    {  
      if ((py>=yBoton)&&(py<=(yBoton+altoBoton)))
      { //return true;}
        siPertenece=true;
      }
    } else { //return false;}
      siPertenece=false;
    }

    return siPertenece;
  }// fin pertenece
}// fin clase Boton