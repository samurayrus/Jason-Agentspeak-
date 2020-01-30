// Agent monster in project rabota1.mas2j

/* Initial beliefs and rules */
name("ERROR").
/* Initial goals */
!start.

/* Plans */

+!start : true <- .print("Монстр работает"); X=math.random(35); Y=math.round(X)+30; +hp(Y); if(Y>45) {+name("ТРОЛЛЬ");} else {+name("ГОБЛИН");}?name(L);.print(L); ?hp(H); .print(H).

+!hpmez(X)<-?hp(H);.print("Было здоровья у монстра");.print(H);+hp(H-X);.wait(1000); ?hp(F);.print("Стало здоровья у монстра");.print(F); .wait(1000); if(F>0){!atk(0);} else {.print("Противник побежден!");.wait(3000);
!start;.send(hero,achieve,dumat)}.

+!atk(0)<-.wait(1500);?name(O);.send(dnevnic,achieve,boy_goblin(O));.wait(1500);X=math.random(15); Y=math.round(X);.send(hero,achieve,hpez(Y)).

