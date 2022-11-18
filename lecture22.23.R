#challenge Lecture 22 11/14/22
myVector<-c(3,10,4,12,55)
for (i in 1:length(myVector)) {
cumulativesum[i]<-sum(myVector[1:i])
}

#for loop Lecture 23 11/16/22

vec<-1:10

cubes<-numeric(length(vec))

for (i in vec){
 cubes[i]<-i^3
 print(cubes[i])
}

#Conditionals in R
#asks are these two equal?
thing1==thing2 
#vs. execute this
thing1=thing2
#noteequal
!=
  >
  <
  >=
  <=
  
  #defined x vector
  x<-5
#conditional form:if followed by some conditional 
  if(x==2){
    #code to be executed if conditional is true
    print("yes, that's true")
    #code to be executed if conditional is false
  }else {"nope not true"}

#challenge
x=4
sqrt(x)
#adjust code to only sqrt if x is not negative
x=4
if(x>0){
  sqrt(x)
} else{"x is negative"}
Weekdays<- c(M,T,W,T,F)
Is_It_Friday<-character(length(Weekdays))
for(i in 1:length(weekdays)){
  if Weekdays[i]==Friday
#loop through vector in conditional
}

# challenge wages sums problem
#use for loop and if else statement to calculate
#total wages for the two genders in wages.csv
wages<- read.csv("wages.csv",header=TRUE)

#tells it to run through i by going down rows
#then marches through each i value within wages file to check whether gender is equal to male
for (i in 1:nrow(wages)){
  if (wages$gender[i]=="male")
    maleTotal<-maleTotal+wages$wage[i]
}else{
  femaleTotal<-femaleTotal+wages$wage[i]
}
