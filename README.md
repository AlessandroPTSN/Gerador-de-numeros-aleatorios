# Gerador-de-numeros-aleatorios
## Gerador de números pseudo-aleatório congruencial linear misto
Um gerador congruencial linear misto é definido pela função:

Xi = (a * Xi-1 + c) mod M

Onde c > 0 inteiro

Para M = 2^b sendo b > 0 inteiro, o gerador é completo se obedecer às respectivas regras: <br>
I) a-1 é divisível por 4 <br>
II) c mod M = 1, c e M são primos relativos <br>
Obs: Qualquer valor c primo já satisfaz II) <br>

### EXEMPLO
Para os valores: a= 5 / c= 17 / M= 16 <br>
N =  10 (quantidade de números pseudo-aleatório gerados)  <br>
seed = 12 (semente para gerar sempre os mesmos resultados pseudo-aleatório) <br>
I) 5-1 = 4 /4 = 1, OK <br>
II) 17 mod 16 = 1, OK <br>
Logo, para os valores a= 5 / c= 17 / M= 16, a função é um gerador congruencial linear misto

```{R}
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

a=5  
c=17 
M=2^4 
N=10 
seed=12 

RNG(a,c,M,N,seed)
```
```{R}
13  2 11  8  9 14  7  4  5 10
```
