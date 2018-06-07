# 06-05 파생변수 추가하기

###################
# 파생변수 추가하기

# 1. 세 과목의 점수를 모두 합한 총합 변수 만들기
exam %>% 
  mutate(total = math + english + science) %>% # 총합 변수 추가
  head    # 일부 추출

# 2. 여러 파생변수 한 번에 추가하기
exam %>% 
  mutate(total = math + english + science,          # 총합 변수 추가
         mean = (math + english + science) / 3) %>% # 평균 변수 추가
  head    # 일부 추출

# 3. mutate()에 ifelse() 적용하기
exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

# 4. 추가한 변수를 dplyr 코드에 바로 활용하기
exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head

# 05-03절에서 파생변수를 추가하는 방법은 기본 문법을 이용
# dplyr 패키지를 사용하면 코드가 간결해지는 장점이 있다.