#data : check even or odd
x =4
if (x %% 2 == 0){
    print("even")
}else{
  print("odd")
}


##or 
a =4
ifelse(a %% 2 == 0,"even","odd")


##break statement : terminate the loop when condition will match
i =1
while(i<100){
  
  if(i%%5 ==0){
    break
  }
  print(i)
  
  i=i+1
}

##next statement : skip/jump the current iteration 
x <- c(1:5)
x <- 1:10

for (val in x) {
  
  if (val%%3  == 0){
    next
  }
  print(val)
}




##repeat statement
x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}


#####Function: is set of command or instructions which is reusable
#function with no argument
info <- function(){
  print('Hi All, I am learning R Program. There are ten functions in my tutorial i. add ii. sub')
  
}

#function with argument 
add <- function (x,y){
  c =x+y
  print(c)
}

#function with no argument with return
test <- function(){
  
  name = readline(prompt = "enter name :")
  return(name)
}

##function with argument and with return
sub <- function(x,y){
  
  z=x-y
  return(z)
}




###### ###############
###### ###############
###### ###############

tax <- function(basic){

    mosal = msal(basic)
    yrsal = ysal(mosal)
    
    if(yrsal<=300000){
      
      print('no tax')
      
    }else if(yrsal<=500000){
      
      tax = (yrsal-300000) * .05
      
    }else if(yrsal <=1000000){
     
      tax = 10000+(yrsal-500000) * .20
      
    }else{
      tax = 110000+(yrsal-1000000) * .30
    }
    
    print(tax)
    
  
}

msal <- function(basic){
  
  hra = basic*.50
  da = basic*.20
  
  total = basic+hra+da
  return(total)
  
}
ysal <- function(sal){
  
  total = sal*12
  return(total)
 ###########
  cube<-function(x){
  c=x^3
  print(c)
  }
  area<-function(r){
    a=3.14*r^2
    print(a)
  }  
  area<-function(x,y){
    a=x*y
    print(a)
  }  
  interest<-function(p,r,t){
    i=p*r*t/100
    print(i)
  }
  sum<-function(n){
    s=n*(n+1)/2
  
  print(s)
  print(s/n)
  

}
  