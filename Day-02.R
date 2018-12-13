
#loop : is iterator or repeation of statement

# there are followng fundamental of loop:
# 1. initialization /start from   ii. condition / limit
i =1

while(i<100){  #condition 
  print(i)
  i=i+1 # incrementer
  
}


#print in reverse order 
i=10
while(i>0){
  print(i)
  i=i-1
}


#wap to print all odd  numbers between 1 to 30
i =1
while(i<=30){
  print(i)
  i=i+2
}


#wap to print all even  numbers between 1 to 30
i =0
while(i<=30){
  
  print(i)
  i=i+2
}


#wap to print all even  numbers between 1 to 30
i =1
while(i<=30){
  
  if(i%%2==0){
  print(i)
  }
  i=i+1
}

## wap to get sum of all even and odd numebrs between 1 to 100
se = 0
so = 0
i =1
while(i<=100){
  
    if(i%% 2==0){ #even no 
      
      se = se+i
    }else{ #odd no
      
      so=so+i
    }
      
  i=i+1
}
#############
a=1
b=100
while(a<=b){
  
  if(a%%5>0 && a%% 3==0 && a%%2 ==0){
    print(a)
  }    
  a=a+1
}
###############

print(se)
print(so)



##
x <- c(2,5,3,9,8,11,6)

for (val in x) {
  
  print(val*2)
  
}


##wap to get count of even and odd numbers fro vector 
#wap to print count of given no..

x<- c(2,5,3,9,8,11,6)
ec =0
oc =0 
for (val in x){
    if (val%%2>0){
      oc=oc+1
    }    else{
    
      ec = ec+1
    }
  
}
print(ec)
print(oc)
  



