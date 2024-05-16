def solution(n):
    a = []
    for i in map(int, str(n)):
        a.append(i)
        b = list(reversed(a))
    return b
