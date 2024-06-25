def solution(phone_number):
    hidden_part = '*' * (len(phone_number) - 4)
    visible_part = phone_number[-4:]
    
    result = hidden_part + visible_part

    answer = result
    return answer
