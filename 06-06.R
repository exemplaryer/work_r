# 06-06 집단별로 요약하기

###################
# 집단별로 요약하기

# 1. summarise()
exam %>% summarise(mean_math = mean(math))    # math 평균 산출

# 2. 집단별로 요약하기
# 반별 수학 점수 평균 산출
# tibble: 데이터 프레임에 몇가지 가능이 추가된 것. int는 정수, dbl은 실수
exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))

# 3. 여러 요약 통계량 한 번에 산출하기
# mean(): 평균
# sd(): 표준편차
# sum(): 합계
# median(): 중앙값
# min(): 최소값
# max(): 최대값
# n(): 빈도
exam %>%
  group_by(class) %>%                       # class별로 분리
  summarise(mean_math = mean(math),         # math 평균
            sum_math = sum(math),           # math 합계
            median_math = median(math),     # math 중앙값
            n = n())                        # 학생 수

# 4. 각 집단별로 다시 집단 나누기
mpg %>% 
  group_by(manufacturer, drv) %>%          # 회사별, 구동 방식별 분리
  summarise(mean_cty = mean(cty)) %>%      # cty 평균 산출
  head(10)                                 # 일부 출력

################
# dplyr 조합하기
#
# 회사별로 "suv" 자동차의 도시 및 고속도로 통합 연비 평균을 구해 내림차순으로 정렬하고,
# 1~5위까지 출력하기

# 1. 코드를 작성하기 전에 어떤 절차로 어떤 함수를 사용할지 생각하면서 정리하기
# 1.1 회사별로 분리: group_by()
# 1.2 suv 추출: filter()
# 1.3 통합 연비 변수 생성: mutate()
# 1.4 통합 연비 평균 산출: summarise()
# 1.5 내림차순 정렬: arrange()
# 1.6 1~5위까지 출력: head()

# 2. dplyr 구문으로 만들기
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(tot = (cty + hwy) / 2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)
