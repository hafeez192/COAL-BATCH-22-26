
n = 20
primes = []
i = 2
while i <= n:  
    is_prime = True
    j = 2
    while j * j <= i:  
        if i % j == 0:
            is_prime = False
            break
        j += 1
    if is_prime:
        primes.append(i)
    i += 1

print(primes)  
