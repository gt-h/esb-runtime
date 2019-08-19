# esb-runtime

Содание нового проекта:
1. Выполните git clone https://github.com/gt-h/esb-runtime.git _name
2. cd _name
3. Используйте .env и Dockerfile чтобы задать параметры проекта.

**Способы запуска, выбирайте любой подходящий**
Первый способ
- docker build -t _yourname .
- docker run -d -v $PWD/apps:/opt/mule/apps -v $PWD/conf:/opt/mule/conf -v $PWD/logs:/opt/mule/logs -v $PWD/domains:/opt/mule/domains -p80:8181 _yourname

2. Запуск заранее собранного, версия 3.9.0:
docker run -d -v $PWD/apps:/opt/mule/apps -v $PWD/conf:/opt/mule/conf -v $PWD/logs:/opt/mule/logs -v $PWD/domains:/opt/mule/domains -p80:8181 vale76/esb-runtime

Выбор параметров оставляю на усмотрение пользователя

3. Запуск с помощью docker-compose:
docker-compose up -d --build

**Тестирование**
 Установите тестовой приложение:
 cp mule-hello.zip apps/
 http://<yourip>
 
 **Инспектирование**
 tail -f logs/*
 
 **Feedback**
 vale@gtufa.ru
 


