def solution(n):
    a = []
    c = []
    for i in range(1, int(n+1)):
        a.append(i)
        
    for b in a:
        if n % b == 1:
            c.append(b)
    return min(c)
