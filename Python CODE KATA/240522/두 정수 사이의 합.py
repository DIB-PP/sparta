def solution(a, b):
    i = 0
    if a == b:
        return a
    
    elif a < b:
        for c in range(a, b + 1):
            i += c
        return i
    
    elif a > b:
        for c in range(b, a + 1):
            i += c
        return i
