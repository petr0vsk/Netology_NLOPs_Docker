# Используем базовый образ miniconda3
FROM continuumio/miniconda3:latest

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл 1.sh внутрь контейнера
COPY 1.sh /app/1.sh

# Даем права на выполнение файла 1.sh
RUN chmod +x /app/1.sh

# Устанавливаем необходимые пакеты Python
RUN conda install -y mlflow boto3 pymysql

# Запускаем 1.sh при запуске контейнера
CMD ["./1.sh"]
