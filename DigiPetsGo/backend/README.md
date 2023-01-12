# Backend

Pentru a porni aplicatia, se poate rula script-ul bash `run.sh`. La final, se poate rula `clean.sh`.

## Adapatorul
Acesta se va ocupa de itereceptarea mesajelor provenite de la un `tester MQTT` si adaugarea acestora in baza de date.

Functionarea adaptorului se regaseste in directorul `./adapter` in scriptul `.py` cu acelasi nume. Pentru inceput se va insantia un nou obiect de tipul `mqtt.Client` si se va realiza conexiunea utilizand `localhost` si portul `1883`, apoi se va abona la topicul `'#'` si va incepe operatiunea de interceptare a mesajelor primite. Totodata se va instantia si un obiect `InfluxDBClient` pentru manipularea bazei de date.

In cazul in care nu exista deja o baza de date cu numele `sensors`, se va adauga. In caz contrar se va utiliza baza de date deja existenta.

Metoda `on_message` reprezinta modul in care adaptorul va reactiona la primirea unui nou mesaj:
* extragerea numelor statiei si locatiei din `topic`-ul mesajului
* convertirea `payload`-ului in dictionar folosind modulu `ast`
* fixarea timestamp-ului tratand cele doua cazuri posibile:
    1. daca timestampul-ul este metionat in payload atunci acesta va fi convertit la fusul orar GMT+0.
    2. daca timestamp-ul nu exista in payload, atunci acesta va fi fixat la momentul curent de timp
* formarea `json`-ului corespunzator si adaugarea unui nou element in baza de date

## Tester
Rolul `tester`-ului este de a publica mesaje ce vor fi interpretate de `adaptor` pentru popularea bazei de date. La intervale de 1s se va genera un nou dictionar ce prezinta payload-ul mesajului trimis. Topicul este definit la inceput, fiecare tester avand un id generat random.

## InfluxDB
Baza de date ce se va fi utilizata in cadrul aplicatiei se numeste `sensors`. Aceasta mentine informatiile adaugate de `adaptor`.

## Grafana
Pentru vizualiza graficele, in browser am introdus `http://127.0.0.1:80`. In prompt-ul de login am introdus username-ul si parola. Am setat data sources manual astfel:

![Screenshot](datasource.png)

Pentru configurarea dashboardurilor, am folosit fisierele json generate folosind export. Pentru mai multe detalii, am utilizat: [Grafana Dashboard Provisioning](https://grafana.com/docs/grafana/latest/administration/provisioning/#dashboards).
