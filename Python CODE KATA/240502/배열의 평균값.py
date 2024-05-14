def solution(numbers):
    a = 0
    
    for ans in numbers:
        a += ans
    answer = a / len(numbers)
    return answer
