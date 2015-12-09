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
euler=function (inter,y0,n){
t=vector(length = n+1)
y=vector(length = n+1)
residual1=vector(length = n+1)
  t[1]=inter[1]
y[1]=y0
h=(inter[2]-inter[1])/n
for(i in 1:n){ 
t[i+1]=t[i]+h
y[i+1]=eulerstep(t[i],y[i],h)
residual1[i+1]=y[i+1]-(0.5*t[i+1]^2+1)
}
plot(t,y)
return(list(t,y,residual1))
}
eulerstep=function(t,y,h){

y=y+h*ydot(t,y);
return(y)}

ydot=function(t,y){

z = t

return(z)
}