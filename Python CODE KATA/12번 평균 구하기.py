# 1차 작성본
# def solution(arr):
#     answer = 0
#     for i in arr:
#         i += i                 for문이 돌면서 i의 값이 계속 변환되어서 원하는 결과가 나오지 않음. 
#     answer = i / len(arr)      answer에 빈 값을 명시했으니 i 대신 answer에서 돌 수 있도록 해야함. 
#     return answer  

# 시현언니랑 함께 한 작성본
def solution(arr):
    answer = 0
    for i in arr:
        answer += i  # answer에 i의 값이 들어가도록 함
    answer = answer / len(arr) # 값이 들어간 answer의 합들의 평균을 계산해서 answer로 나오게 함 
    return answer
