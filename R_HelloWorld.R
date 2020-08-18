print("hello world")
print(22+3.1)
myString <- "yoooooooo"
print(myString)
print(class(myString))
d<-'1'
e<-999
nd<-as.integer(d)
nd+e
#paste(...,sep=" ",sep="-"))
a<-"may"
b<-"the force"
c<-"be with"
d<-"you"
print(paste(a,b,c,d))
print(paste(a,b,c,d,sep=","))
car<-c('BMW','TOYOTA','AUDI')
print(car)

print(class(car))

number<-1:10
print(number)

number2<-seq(1,10,by=0.5)
print(number2)

y=vector(mode="logical",length=9)
z=vector(mode="numeric",length=4)
rep(1:4,2)
rep(1:4,each=2,len=10)
rep(1:4,each=2,times=3)

N<-matrix(c(1:6),nrow=2,ncol=3,byrow=TRUE)
print(N)

B<-cbind(c(1,2,3),c(4,5,6))
print(B)
C<-rbind(c(1,2,3),c(4,5,6))
print(C)
M<-matrix(c(1:6),nrow=3,ncol=2,byrow=FALSE)
print(M)
N<-matrix(c(1:6),nrow=2,ncol=3,byrow=TRUE)
print(N)
