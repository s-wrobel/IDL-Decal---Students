pro smile

  x= findgen(100)                ;make a large enough array so that the picture is refined
  y= 5*sin(!PI*x/50)+5           ;;use polar coordinates given by y,z in terms of x which satisfy the size of the circle--radius 5 origin at (5,5)
  z= 5*cos(!PI*x/50)+5
  plot, z,y

  w=3*(-1)*sin(!PI*x/100)+5      ; make the bottom half of a semicircle of radius 3 and origin (5,5)
  v=3*cos(!PI*x/100)+5
  oplot, v,w

  q=(.5)*sin(!PI*x/50)+6         ;make a circle with radius .5 and origin (3,6)
  r=(.5)*cos(!PI*x/50)+3
  oplot, r,q

  s=(.5)*sin(!PI*x/50)+6         ;make a circle with radius .5 and orgin (7,6)
  t=(.5)*cos(!PI*x/50)+7
  oplot, t,s



end
