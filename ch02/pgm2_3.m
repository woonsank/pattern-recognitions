%프로그램 2-3 Evaluating Performance
%학습오차를 계산하는 프로그램

load data2_1                        %저장된 데이터를 불러들임
load mean2_1                        %저장된 평균/공분산의 추정치를 불러들임
Etrain=0;                           %학습데이터에 대한 분류 시작
N = size(X1,1);
for i=1:N
    d1=norm(X1(i,:)-m1);            %클래스 1의 평균과의 거리 계산
    d2=norm(X2(i,:)-m2);            %클래스 2의 평균과의 거리 계산
    if (d1-d2)>0
        Etrain = Etrain+1;          %오분류된 경우 학습오차 증가
    endif
    d1=norm(X2(i,:)-m1);            %클래스 1의 평균과의 거리 계산
    d2=norm(X2(i,:)-m2);            %클래스 2의 평균과의 거리 계산
    if (d1-d2)<0
        Etrain = Etrain+1;          %오분류된 경우 학습오차 증가
    endif
end
fprintf(1,'Training Error = %.3f\n', Etrain/50);  %학습오차 출력
