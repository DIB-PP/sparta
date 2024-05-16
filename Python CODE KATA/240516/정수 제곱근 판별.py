def solution(n):
    a = 0    
    a = n ** (1/2)
    
    if int(a) == a:
        return (a + 1) ** 2
    else:
        return -1
