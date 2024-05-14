def solution(n):
    i=0
    for ans in range(1, n+1):
        if ans % 2 == 0:
            i += ans
    return i
