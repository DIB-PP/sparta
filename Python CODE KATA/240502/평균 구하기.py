def solution(arr):
    answer = 0
    
    for a in arr:
        answer += a
        
    ans = answer / len(arr)
    return ans
