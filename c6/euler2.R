#
# Copyright (c) 2015 by Xiaoye Meng ,Yuchao Zhao.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
euler2=function (inter,y0,n){
  t=vector(length = n+1)
  y=matrix(nrow=n+1,ncol=length(y0))
 
  t[1]=inter[1]
  y[1,]=y0
  h=(inter[2]-inter[1])/n
  for(i in 1:n){ 
    t[i+1]=t[i]+h
    y[i+1,]=eulerstep(t[i],y[i,],h)
    
  }
  
  plot(t,y[,1],ylim=c(min(y),max(y)),pch=1)
  points(t,y[,2],pch=2) 
  return(list(t,y))
}
eulerstep=function(t,y,h){
  
  y=y+h*ydot(t,y);
  return(y)}

ydot=function(t,y){
  z=vector(length = 2)
  z[1] = y[2]^2-2*y[1]
  z[2]=y[1]-y[2]-t*y[2]^2
  
  return(z)
}