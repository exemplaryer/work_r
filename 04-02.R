# 04-02 데이터 프레임 만들기 - 시험 성적 데이터를 만들어 보자!

# 데이터 입력해 데이터 프레임 만들기
# 이름    영어 점수    수학 점수
# 김지훈  90           50
# 이유진  80           60
# 박동현  60           100
# 김민지  70           20

# 1. 변수 만들기
english <- c(90, 80, 60, 70)    # 영어 점수 변수 생성
english

math <- c(50, 60, 100, 20)      # 수학 점수 변수 생성
math

# 2. 데이터 프레임 만들기 data.frame()
# english, math로 데이터 프레임 생성해서 df_midterm에 할당
df_midterm <- data.frame(english, math)
df_midterm

# 3. 학생의 반 속성이 추가된 데이터 프레임 만들기
class <- c(1, 1, 2, 2)
class

df_midterm <- data.frame(english, math, class)
df_midterm

# 4. 분석하기: 전체 학생의 영어 점수와 수학 점수 평균을 구하기
# '$'는 데이터 프레임 안에 있는 변수를 지정할 때 사용
mean(df_midterm$english)    # df_midterm의 english로 평균 산출
mean(df_midterm$math)       # df_midterm의 math로 평균 산출

# 5. 데이터 프레임 한 번에 만들기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm