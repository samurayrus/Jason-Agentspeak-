// Agent Hero in project rabota1.mas2j

/* Initial beliefs and rules */

/* Initial goals */
name("������").
hp(100).
gold(0).
potion(1).
!start.

/* Plans */

+!start : true <- .wait(500); .print("������ �����������");  ?name(X);
.send(dnevnic,achieve,begin(X)); .wait(1000); !dumat.
+!dumat<-  D=math.random(1);S=math.round(D);!resh(S).
+!resh(0)<- //��������������
.print("����� ����������"); .wait(500);.send(dnevnic,achieve,sob_forest_random).
+!resh(1)<- //����� � �����
.print("����� � �����"); .wait(500);.send(dnevnic,achieve,sob_city_random).
+!resh(2)<- //����������
.print("����� �������"); .wait(500).
+!goldez(X)<- 
?gold(G);.print("���� ������");.print(G);+gold(G+X);.wait(1000); ?gold(F);.print("����� ������");.print(F); !resh(0).
//���
+!hpez(X)<- 
?hp(H);.print("���� ��������");.print(H);+hp(H-X);.wait(1000); ?hp(F);.print("����� ��������");.print(F);
?potion(P);
if(P>0 & F<60)
{.wait(500); +potion(P-1); +hp(H+30); .print("������������ ����� �������");.wait(3000); !atk(0);}
else 
{
if(F>0)
{ 
!atk(0);
}
else 
{.print("������ ����� ����������");
}
}.
+!atk(0)<- .wait(1000);?name(O);.send(dnevnic,achieve,boy_hero(O));.wait(1000);X=math.random(35); Y=math.round(X);.send(monster,achieve,hpmez(Y)).
+!pokupka<-.wait(1000);?gold(X); .send(dnevnic,achieve,pokupka(X)).




