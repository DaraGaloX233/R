a<-data.frame(emp_id=c(1,2,3),name=c("john","james","mary",salary=c(111.1,222.2,333.3)))
print(a)
c<-array(c(1:9,11:19,21:29),dim=c(5,5,3))
print(c)

result<-format(23.47,nsmall=5)
print(result)

result<-format(c(6,13.14521),scientific = TRUE)
print(result)

CtoF<-function(num1){num1*9/5+32}
CtoF(32)

car_name<-c("Honda","BMW","Ferrari")
  
car_name[2]

car_name[-2]

car_name[c(FALSE,TRUE,FALSE)]
BMI<-data.frame(gender=c("male","male","femal",height=c(152,171,165),weight=c(81,93,78),age=c(42,38,26)))

a=1
b=2
x<-switch(a+b,"first","second","third","fourth")
print(x)

x<-c(1,2,3,4,5,6,7)
count<-0
for(val in x){count=count+val}
print(count)