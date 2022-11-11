from PIL import Image, ImageEnhance, ImageFilter
import cv2
from matplotlib import pyplot as plt
import numpy as np
import os



def gist(img, name = ''):                                                                           #Создание гистограмм
    graf = plt.hist(img.ravel(), 256, [0, 256])
    plt.suptitle(name)
    return graf


def change_brightness(img, value = 0):                                                                #Работа с яркостью
    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)                                                      #Делаем из RGB в VSH
    h, s, v = cv2.split(hsv)                                                        #Находим канал отвечающий за яркость
    v = cv2.add(v, value)
    v[v > 255] = 255                                                                            #Меняем значение яркости
    v[v < 0] = 0
    final_hsv = cv2.merge((h, s, v))
    img = cv2.cvtColor(final_hsv, cv2.COLOR_HSV2BGR)                                                #Делаем из VSH в RGB
    return img


def min_filer(path):                                                                      #Работа с минимальным фильтром
    img = Image.open(path)
    fil = img.filter(ImageFilter.MinFilter(size = 3))                                      #Функция минимального фильтра
    fil.save('filter.jpg')                                                #Сохранение изображения для построения графика

    f_img = cv2.imread('./filter.jpg')                                                             #Открываем для OpenCV
    cv2.imshow('Processed image', f_img)                                               #Выводим обработанное изображение
    gist(f_img, 'Минимальный фильтр')
    plt.show()                                                                     #Гистограмма для минимального фильтра
    os.remove('./filter.jpg')                                                            #Удаление изображения из памяти



def brightness(path):                                                                   #Повышение или понижение яркости
    choose = input('1: Повышение яркости/n2: Понижение яркости/n>> ')
    value = int(input('Введите коэффециент обработки: '))
    img = cv2.imread(path)                                                                        #Открываем изображение

    name_g = ''
    if value < 0:                                                                   #Выбор увеличение/уменьшение яркости
        print('Коэффициен должен быть больше нуля')
    else:
        if choose == '1':
            name_g = 'Повышенная яркость'
            img = change_brightness(img, value)

        if choose == '2':
            name_g = 'Пониженная яркость'
            img = change_brightness(img, value * (-1))


    gist(img, name_g)                                                         #Вызов функции для постороения гистограммы
    cv2.imshow('Processed image', img)                                                  #Вывод обработанного изображения
    plt.show()                                                                                        #Вывод гистограммы



if __name__ == '__main__':                                                                                  #Точка входа
    hi = input('1: Для работы с яркостью/n2: Для работы с минимальным фильтром/n>> ')
    path = input('/nПуть к файлу/n>> ')                                                          # Ввод пути изображения
    path = path.replace('//', '/')                                                     # Изменение наклома слешей с пути

    if hi == '1':
        brightness(path)
    if hi == '2':
        min_filer(path)
