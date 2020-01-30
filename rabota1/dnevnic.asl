// Agent Dnevnic in project rabota1.mas2j

/* Initial beliefs and rules */

/* Initial goals */
!begin(0).

/* Plans */

+!begin(0) : true <- .print("������� ��������").
+!begin(X)<-.print("�� ���� �������� ����� � ������ ",X).
+!sob_forest_random<- .print("___F___O___R___E___S___T__"); X=math.random(10); Y=math.round(X);.wait(1000);!sob_forest(Y).
+!sob_forest(0)<-.print("����������� ���"); .wait(1000); !sob_forest_random.
+!sob_forest(1)<-.print("������ ����� � ����"); .wait(1000);!sob_forest_random.
+!sob_forest(2)<-.print("�������� ������� ������"); .wait(1000);!sob_forest_random.
+!sob_forest(3)<-.print("����� ���� ����� ������ �������"); .wait(1000); X=math.random(10); Y=math.round(X);.send(hero,achieve,goldez(Y)).
+!sob_forest(4)<-.print("����� ��������� ������� � �������"); .wait(1000); X=math.random(55); Y=math.round(X);.send(hero,achieve,goldez(Y)).
+!sob_forest(5)<-.print("�������� ����������� ����"); .wait(1000); !sob_forest_random.
+!sob_forest(6)<-.print("����� ������ � ����������"); .wait(1000);!sob_forest_random.
+!sob_forest(7)<-.print("������ �������"); .wait(1000);!sob_forest_random.
+!sob_forest(8)<-.print("�� ���������� �� ������� �������"); .wait(1000); .send(monster,achieve,atk(0)).
+!sob_forest(9)<-.print("�� ���������� �� �������"); .wait(1000); .send(monster,achieve,atk(0)).
+!sob_forest(10)<-.print("�� �������� ������� �������"); .wait(1000); .send(monster,achieve,atk(0)).
+!viz_dumatel<- .wait(500);.send(hero,achieve,dumat).
+!boy_goblin(N)<-.print("____M____O____N_____S____T____E____R_"); X=math.random(3); Y=math.round(X);.wait(1000);!boy_goblin(Y,N).
+!boy_goblin(0,N)<-.print(N," ����������� � ���� ����� �����").
+!boy_goblin(1,N)<-.print(N," ����������� ����������").
+!boy_goblin(2,N)<-.print(N," ����� ������ ���� � ����").
+!boy_goblin(3,N)<-.print(N," ����� � ���� �����").
+!boy_hero(N)<-.print("___H_____E_____R______O_____"); X=math.random(3); Y=math.round(X);.wait(1000);!boy_hero(Y,N).
+!boy_hero(0,N)<-.print(N,"  ���������� ��������").
+!boy_hero(1,N)<-.print(N,"  ����� � ������� ���������").
+!boy_hero(2,N)<-.print(N,"  �������� ������� ������� �����, �� ������ �� ���� � ������ ���� �����").
+!boy_hero(3,N)<-.print(N,"  �������� ���������� �������").
//�����
+!sob_city_random<- .print("____C______I______T_____Y_____"); X=math.random(8); Y=math.round(X);.wait(1000);!sob_city(Y).
+!sob_city(0)<-.print("������� �� ����������"); .wait(1000); !sob_city_random.
+!sob_city(1)<-.print("������� � �������������� ��������"); .wait(1000); !sob_city_random.
+!sob_city(2)<-.print("�������� �������� ���� ������ ���������"); .wait(1000); !sob_city_random.
+!sob_city(3)<-.print("�������� �� ������"); .wait(1000); !sob_city_random.
+!sob_city(4)<-.print("������ �� ������"); .wait(1000); !sob_city_random.
+!sob_city(5)<-.print("�������������� ����� �������� � ������ ������"); .wait(1000); !sob_city_random.
+!sob_city(6)<-.print("���� ���������� � �������, �������� ������"); .wait(1000); .send(hero,achieve,goldez(-34)).
+!sob_city(7)<-.print("�������� � �������� ����� �������"); .wait(1000); .send(hero,achieve,pokupka).
+!sob_city(8)<-.print("�������� � �������� ����� �������"); .wait(1000); .send(hero,achieve,pokupka).
+!pokupka(J)<-
if(J>50) 
{.send(hero,achieve,goldez(-50));
.wait(1000);.print("����� ����� �����");}
else 
{.print("� ����� ��� �����");
.wait(1000);}
.send(hero,achieve,dumat).

