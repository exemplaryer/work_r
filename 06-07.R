# 06-07 데이터 합치기

###############
# 가로로 합치기

# 1.

# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))

# 기말고사 데이터 생성
test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(70, 83, 65, 95, 80))

test1
test2

# 2. left_join()
total <- left_join(test1, test2, by = "id")    # id를 기준으로 합쳐 total에 저장
total

####################################
# 다른 데이터를 활용해 변수 추가하기

# 1. 각 반 학생들의 시험 점수를 담은 exam 데이터를 분석하고 있는데,
# 추가로 반별 담임교사 명단을 얻었다고 가정.
name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

# 2. class 변수를 기준으로 name의 teacher 변수를 exam에 추가
exam_new <- left_join(exam, name, by = "class")
exam_new

###############
# 세로로 합치기

# 1.

# 학생 1~5번 시험 데이터 생성
group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 85))

# 학생 6~10번 시험 데이터 생성
group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))
group_a
group_b

# 2. bind_rows()
group_all <- bind_rows(group_a, group_b)
group_all
