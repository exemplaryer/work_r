# 03-02 마술 상자 같은 함수 이해하기

# 숫자를 다루는 함수 이용하기

# 1. 평균을 구하는 함수 mean()
# 변수 만들기
x <- c(1, 2, 3)
x

# 함수 적용하기
mean(x)

# 2. 최대값과 최소값 구하는 함수 max(), min()
max(x)
min(x)

# 문자열을 다루는 함수 이용하기

# 1. 여러 문자열을 합쳐 하나로 만드는 함수 paste()
str5
paste(str5, collapse = ",")    # 쉼표를 구분자로 str5의 단어를 하나로 합치기
paste(str5, collapse = " ")
# collapse처럼 함수의 옵션을 설정하는 명령어를 '파라미터'라고 합니다.

# 2. 함수의 결과물로 새 변수 만들기
x_mean <- mean(x)
x_mean

str5_paste <- paste(str5, collapse = " ")
str5_paste
