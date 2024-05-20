def solution(n):
    a = []
    for i in str(n):
        a.append(i)
        a.sort()
        a.reverse()
        
        
    return int(''.join(a))
