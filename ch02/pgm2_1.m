%프로그램 2-1 Data Generation
%가우시안 분포를 따르는 데이터를 생성하고, 2차원 평면에 플롯하는 프로그램

N=25;                                   %각 클래스의 데이터 개수
m1=repmat([3,5], N, 1);                  %클래스 C1의 평균을 가지는 행렬 m1
m2=repmat([5,3], N, 1);                  %클래스 C2의 평균을 가지는 행렬 m2
s1=[1 1; 1 2];                           %클래스 C1의 공분산 행렬 s1
s2=[1 1; 1 2];                           %클래스 C2의 공분산 행렬 s2
X1=randn(N,2)*sqrtm(s1) + m1;           %클래스 C1의 데이터 생성
X2=randn(N,2)*sqrtm(s2) + m2;           %클래스 C2의 데이터 생성
plot(X1(:,1), X1(:,2), '+');            %클래스 C1의 데이터 플롯("+" 모양)
hold on;
plot(X2(:,1), X2(:,2), 'd');            %클래스 C1의 데이터 플롯(diamond 모양)
save data2_1 X1 X2;