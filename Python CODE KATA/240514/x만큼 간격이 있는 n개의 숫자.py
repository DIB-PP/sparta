def solution(x, n):
    answer = []
    for a in range(x, x*(n+1), x):
        answer.append(a) 
    return answer
