def solution(seoul):
    answer = ''
    i = -1
    for a in seoul:
        i += 1
        if a == 'Kim':
            answer = f'김서방은 {i}에 있다'
    return answer
