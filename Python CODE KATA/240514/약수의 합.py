def solution(n):
    answer = 0
    a = []
    for i in range(1, int(n+1)):
        a.append(i)
        
    for b in a:
        if n % b == 0:
            answer += b
    return answer
