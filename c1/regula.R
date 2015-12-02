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
regula=function(f,xmin,xmax,tol=1e-5){
  a=xmin
  b=xmax
  if(a>=b){
    cat("error :xmin >xmax\n")
    return(NULL)
  }
  if(f(a)==0){ 
    return(a)
  }else if(f(b)==0){ 
    return(b)
  }else if(f(a)*f(b)>0){cat("error:f(xmin) and f(xmax) of same sign \n") 
        return(NULL)
    }
  iter=0
  while((b-a)>tol){
    c=(b*f(a)-a*f(b))/(f(a)-f(b))
    if(f(c)==0){return(c)}
    else if(f(a)*f(c)<0){b=c}
    else{a=c}
    iter=iter+1
  }
  return(c((b*f(a)-a*f(b))/(f(a)-f(b)),iter,(b-a)))
}
          