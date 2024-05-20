def solution(x):
    a = []
    for i in map(int, str(x)):
        a.append(i)
        
    b = 0    
    for ii in a:
        b += ii
        
        
    if x % b == 0:
        answer = True
    else:
        answer = False
            
    return answer
