// Agent Hero in project rabota1.mas2j

/* Initial beliefs and rules */

/* Initial goals */
name("Баруса").
hp(100).
gold(0).
potion(1).
!start.

/* Plans */

+!start : true <- .wait(500); .print("Начало путешествия");  ?name(X);
.send(dnevnic,achieve,begin(X)); .wait(1000); !dumat.
+!dumat<-  D=math.random(1);S=math.round(D);!resh(S).
+!resh(0)<- //Путешествовать
.print("Пойду прогуляюсь"); .wait(500);.send(dnevnic,achieve,sob_forest_random).
+!resh(1)<- //Пойти в город
.print("Пойду В город"); .wait(500);.send(dnevnic,achieve,sob_city_random).
+!resh(2)<- //Помолиться
.print("Время молитвы"); .wait(500).
+!goldez(X)<- 
?gold(G);.print("Было золота");.print(G);+gold(G+X);.wait(1000); ?gold(F);.print("Стало золота");.print(F); !resh(0).
//Бой
+!hpez(X)<- 
?hp(H);.print("Было здоровья");.print(H);+hp(H-X);.wait(1000); ?hp(F);.print("Стало здоровья");.print(F);
?potion(P);
if(P>0 & F<60)
{.wait(500); +potion(P-1); +hp(H+30); .print("ИСПОЛЬЗОВАНО ЗЕЛЬЕ ЛЕЧЕНИЯ");.wait(3000); !atk(0);}
else 
{
if(F>0)
{ 
!atk(0);
}
else 
{.print("Настал конец геройствам");
}
}.
+!atk(0)<- .wait(1000);?name(O);.send(dnevnic,achieve,boy_hero(O));.wait(1000);X=math.random(35); Y=math.round(X);.send(monster,achieve,hpmez(Y)).
+!pokupka<-.wait(1000);?gold(X); .send(dnevnic,achieve,pokupka(X)).




