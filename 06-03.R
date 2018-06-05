# 06-03 필요한 변수만 추출하기

###############
# 변수 추출하기

# 1. math 추출
exam %>% select(math)

# 2. english 추출
exam %>% select(english)

# 3. 여러 변수 추출하기
exam %>% select(class, math, english)    # class, math, english 변수 추출

# 4. 변수 제외하기
exam %>% select(-math)              # math 제외
exam %>% select(-math, -english)    # math, english 제외

#####################
# dplyr 함수 조합하기

# 1. filter()와 select() 조합하기
# class가 1인 행만 추출한 다음 english 추출
exam %>% filter(class == 1) %>% select(english)

# 2. 가독성 있게 줄 바꾸기
exam %>% 
  filter(class == 1) %>%
  select(english)

# 3. 일부만 출력하기
# 앞부분 6행까지 추출
exam %>%
  select(id, math) %>% 
  head

# 앞부분 10행까지 추출
exam %>% 
  select(id, math) %>% 
  head(10)
