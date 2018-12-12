a =1  # here a is variable

sum(c(1:10))  # here sum is function 

?reserved # show list of reserved words 

## correct syntax of variable 
total =11
.fine.with.dot=999
this_is_acceptable=444
Number5=33

#incorrect syntax
tot@l=11
5um=33
_fine=44
TRUE=1, 
.0ne
##############3

###Numeric Constants
##assign data on variable
a =100
a<- 200  # this is recommended 

typeof(a)   #double 

typeof(111.2322)
typeof(444)
typeof(1)

#integer 
typeof(133L)

##complex
typeof(444i)


## charracter / string / text
a ='jhshs'
typeof(a)


a ="jhshs333444%$$"
typeof(a)


a ="44555"
typeof(a)


#Built-in Constants
letters 

LETTERS

month.name
month.abb

pi



####
n =45

n/10   #4.5   return double divisibal 
n%/%10  # 4 return integer value , without decimal 
n%%10   # 5 return mod



10 -> a
a

a <- 10 


##############Example
sid <- 101
name <- "raman sinha"
hs <- 45
es <- 86
cs <- 56

total = hs+es+cs
avg = total / 3

#print grade 
if(avg>=80){   #true 
  
    print("A")
  
}else if(avg>=60) {
  
  print("B")
}else if(avg>=40){
  
  print("C")
}

#####
a<-12
square= a^2

b<-14
cube=b^3

a<-3
b<-4
c<-5
d<-6
a=a^3
b=b^3
c=c^3
d=d^3

if(a+b+c == d){
  
  print('condition match')
}else{
  
  print('condition not match')
}

a<-12000

if(a>5000 && a<10000){
  hra = a*.10
  da = a*.05
  
  
}else if (a>10000 && a<15000){
  
  hra = a*.15
  da = a*.08
}

print(hra)
print(da)

############
a<-56
if(a>=60){
  
  division = "first"

}else if (a>50 && a<59){
 
   division = "second"

}else if (a>40 && a<49){

    division = "third"

}else if (a<40){

    division = "faithful"
}

print(division)

###########
a<-400
if(a<=100){
  charges = a*.40
  
}else if(a>100 && a<300){
  
  charges = 40+(a-100)*.50
  
}else if(a>300){
  
  charges=140+(a-300)*.60
  
}
  print(charges+50)

