#Gerador de números pseudo-aleatório congruencial linear misto
#i) a-1 é divisivel por 4
#ii) mod(c,M)=1 c e M sao primos relativos, coprimos

RNG=function(a,c,M,N,seed){
	N=N+1
	x=c(1:N)
	x[1]=seed  
		for(i in 2:N){
 	 		x[i] = (a*x[i-1] + c) %% M
		}
	x=x[-1]
	return(x)
}

#Para os valores: a= 5 / c= 17 / M= 16
#Vamos verificar as propiedades
#i) a-1 é divisivel por 4
a=5
(a-1)%% 4 #OK 
#ii) mod(c,M)=1 c e M sao primos relativos, coprimos 
#(qualquer c primo satisfaz ii) (M pode n ser primo)
c=17#c>0
M=2^4
c%%M ; mod(c,M) #OK

#Testando 10 numeros com a semente 12
N=10
seed=12
RNG(a,c,M,N,seed)