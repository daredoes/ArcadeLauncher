//d3d_set_projection_firstperson()
xf=x
yf=y
zf=z

xt=x+lengthdir_x(zoom,rzv)*cos(degtorad(rxv))
yt=y+lengthdir_y(zoom,rzv)*cos(degtorad(rxv))
zt=z-sin(degtorad(rxv))*zoom

d3d_set_projection(xf,yf,zf,xt,yt,zt,0,0,1)
