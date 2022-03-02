---
## Front matter
lang: ru-RU
title: Лабораторная работа №5
author: |
	Кондрашина Мария Сергеевна\inst{1}
institute: |
	\inst{1}RUDN University, Moscow, Russian Federation
date: 02.03.2022, Moscow

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---  

# Модель хищник-жертва

## Цель работы

- Научиться строить модель «хищник-жертва».
- Выполнить лабораторную работу №5 согласно своему варианту(34) и сделать по ней отчет.

## Теоретическое введение

Часто представители одного вида питаются представителями другого вида. Модель Лотки – Вольтерры – модель взаимного существования двух популяций типа «хищник – жертва».

То есть, система «хищник — жертва» — это сложная экосистема, для которой реализованы долговременные отношения между видами хищника и жертвы, типичный пример коэволюции.

Отношения между хищниками и их жертвами развиваются циклически, являясь иллюстрацией нейтрального равновесия.

##

Модель Лотки – Вольтерры описывает данная система:

$$
\begin{cases}
    \frac{dx}{dt}=ax(t)-bx(t)y(t)\\
    \frac{dy}{dt}=-cy(t)+dx(t)y(t)
\end{cases}
$$

В этой модели $x$ – число жертв, $y$ - число хищников. Коэффициент $a$ описывает скорость естественного прироста числа жертв в отсутствие хищников, $d$ - естественное вымирание хищников, лишенных пищи в виде жертв. Вероятность взаимодействия жертвы и хищника считается пропорциональной как количеству жертв, так и числу самих хищников ($xy$). Каждый акт взаимодействия уменьшает популяцию жертв, но способствует увеличению популяции хищников (члены $-bxy$и $dxy$ в правой части уравнения).

## Задание. Вариант 34

Для модели «хищник-жертва»:
$$
\begin{cases}
    \frac{dx}{dt}=-0.26x(t)+0.027x(t)y(t)\\
    \frac{dy}{dt}=0.28y(t)-0.031x(t)y(t)
\end{cases}
$$
Постройте график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях: $x_0=6, y_0=12$. Найдите стационарное состояние системы.

## График зависимости численности хищников от численности жертв

![График зависимости численности хищников от численности жертв](lab5p/d.jpg){ #fig:001 width=100%}

## График изменения численности хищников

![График изменения численности хищников](lab5p/h.jpg){ #fig:002 width=100%}

## График изменения численности жертв

![График изменения численности жертв](lab5p/j.jpg){ #fig:003 width=100%}

## График изменения численности хищников и численности жертв

![График изменения численности хищников и численности жертв](lab5p/both.jpg){ #fig:004 width=100%}

## Стационарное состояние системы

Стационарное состояние системы (положение равновесия, не зависящее от времени решение) будет в точке: $x_0=\frac{c}{d}$, $y_0=\frac{a}{b}$.

Если начальные значения задать в стационарном состоянии, то в любой момент времени численность популяций изменяться не будет.

##

Стационарное состояние системы для задания:

Коэффициенты: a=-0.26, b=-0.027, c=-0.28, d=-0.031

$$x_0=\frac{-0.28}{-0.031} \approx 9.032$$

$$y_0=\frac{-0.26}{-0.027} \approx 9.63$$

## График, когда начальные данные задаются в стационарном состоянии

![График, когда начальные данные задаются в стационарном состоянии](lab5p/both2.jpg){ #fig:005 width=100%}

## Результат

- Выполнила лабораторную работу №5.
- Познакомилась с написанием модели хищник-жертва.
- Познакомилась с написанием математических моделей при использованиии openmodelica.

## Список литературы

1. Методические материалы курса.
2. https://spravochnick.ru/informacionnye_tehnologii/informacionnye_modeli_i_modelirovanie/model_hischnik-zhertva/
3. https://ru.wikipedia.org/wiki/Система_«хищник_—_жертва»