# 03-01 변하는 수, ‘변수’ 이해하기

# 화살표 기호는 변수에 값을 할당한다는 의미에서
# '할당 연산자(Assignment Operators)' 라고 합니다.
a <- 1    # a에 1 할당
a         # a 출력

b <- 2
b

c <- 3
c

d <- 3.5
d

# a = 1 처럼 화살표 대신 등호(=)를 사용해도 됩니다.
# 하지만 R에서는 등호가 변수를 만드는 것 외에도
# 다른 기능을 하기 때문에 변수를 만들 때는 헷갈리지
# 않도록 화살표 기호를 사용하길 권합니다.

a + b

a + b + c

4 / b

5 * b

# 변수명 생성 규칙
# 변수명은 알아보기 쉽고 기억하기 쉽도록 의미를 담아 이름을 정한다.
# 문자, 숫자, 대시(-), 언더바(_)를 조합할 수 있다.
# 반드시 문자로 시작해야 한다.
# 한글도 가능하나 오류가 발생하는 경우가 있으니 영문으로 하는걸 권장
# 모든 변수는 소문자로 만드는 것을 권장

# 여러 값으로 구성된 변수 만들기
# 함수 c(): 여러개의 값을 넣는 기능.
#           '합치다'를 의미하는 'Combine'의 머리글자
var1 <- c(1, 2, 5, 7, 8)    # 숫자 5개로 구성된 var1 생성
var1

var2 <- c(1:5)    # 1~5까지 연속 값으로 var2 생성
var2

# 함수 seq(): 괄호 안에 시작 숫자와 마지막 숫자를 쉼표로 구분하여 입력
#             '연속'을 의미하는 'Sequence'의 머리글자
var3 <- seq(1, 5)    # 1~5까지 연속 값으로 var3 생성
var3

# by 파라미터는 일정한 간격을 두고 연속된 숫자로 된 변수 생성하는 것
var4 <- seq(1, 10, by = 2)    # 1~10까지 2 간격 연속 값으로 var4 생성
var4

var5 <- seq(1, 10, by = 3)    # 1~10까지 3 간격 연속 값으로 var5 생성
var5

# 여러 값으로 구성된 변수의 연산 1
var1
var1 + 2

# 여러 값으로 구성된 변수의 연산 2
var1
var2
var1 + var2

# 문자열로 된 변수 만들기
str1 <- "a"
str1

str2 <- "text"
str2

str3 <- "Hello World!"
str3

# 여러 개의 문자열로 구성된 변수
str4 <- c("a", "b", "c")
str4

str5 <- c("Hello!", "World", "is", "good!")
str5
# "is"와 "good!" 사이의 간격이 벌어진 형태로 출력된 이유는
# 문자열들 중 가장 긴 단어의 길이를 기준으로 출력 구간을 정하기 때문

# 문자로 된 변수로는 연산할 수 없다.
str1 + 2    # 에러 발생
