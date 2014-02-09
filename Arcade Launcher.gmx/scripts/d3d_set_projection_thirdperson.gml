//d3d_set_projection_thirdperson()

xf=x+lengthdir_x(zoom,rzv-90)*cos(degtorad(rxv))
yf=y+lengthdir_y(zoom,rzv-90)*cos(degtorad(rxv))
zf=z-sin(degtorad(rxv))*zoom

d3d_set_projection(xf,yf,zf,x,y,z,0,0,1)
