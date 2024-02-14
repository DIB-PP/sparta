def solution(n):
    answer = 0
    for i in range(1, n+1):
        if n % i == 0:
            answer += i
    return answer

# https://sun-kakao.tistory.com/96 약수 구하기 참고 블로그 
