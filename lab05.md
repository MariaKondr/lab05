---
# Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Модель хищник-жертва"
author: "Кондрашина Мария Сергеевна"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

- Научиться строить модель хищник-жертва.
- Выполнить лабораторную работу №5 согласно своему варианту(34) и сделать по ней отчет.

# Задание. Вариант 34

Для модели «хищник-жертва»:
$$
\begin{cases}
    \frac{dx}{dt}=-0.26x(t)+0.027x(t)y(t)\\
    \frac{dy}{dt}=0.28y(t)-0.031x(t)y(t)
\end{cases}
$$
Постройте график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях: $x_0=6, y_0=12$. Найдите стационарное состояние системы.

# Теоретическое введение

Часто представители одного вида (популяции) питаются представителями другого вида. Модель Лотки – Вольтерры – модель взаимного существования двух популяций типа «хищник – жертва». [2]
То есть, система «хищник — жертва» — это сложная экосистема, для которой реализованы долговременные отношения между видами хищника и жертвы, типичный пример коэволюции.
Отношения между хищниками и их жертвами развиваются циклически, являясь иллюстрацией нейтрального равновесия. [3]
Модель Лотки – Вольтерры основывается на следующих предположениях:

1. Численность популяции жертв x и хищников y зависят только от времени (модель не учитывает пространственное распределение популяции на 
занимаемой территории)
2. В отсутствии взаимодействия численность видов изменяется по модели Мальтуса, при этом число жертв увеличивается, а число хищников падает
3. Естественная смертность жертвы и естественная рождаемость хищника считаются несущественными
4. Эффект насыщения численности обеих популяций не учитывается
5. Скорость роста численности жертв уменьшается пропорционально численности хищников

$$
\begin{cases}
    \frac{dx}{dt}=ax(t)-bx(t)y(t)\\
    \frac{dy}{dt}=-cy(t)+dx(t)y(t)
\end{cases}
$$

В этой модели $x$ – число жертв, $y$ - число хищников. Коэффициент $a$ описывает скорость естественного прироста числа жертв в отсутствие хищников, $d$ - естественное вымирание хищников, лишенных пищи в виде жертв. Вероятность взаимодействия жертвы и хищника считается пропорциональной как количеству жертв, так и числу самих хищников ($xy$). Каждый акт взаимодействия уменьшает популяцию жертв, но способствует увеличению популяции хищников (члены $-bxy$и $dxy$ в правой части уравнения). [1]

# Выполнение лабораторной работы

1. Написание кода (@fig:001)

$$
\begin{cases}
    \frac{dx}{dt}=ax(t)-bx(t)y(t)\\
    \frac{dy}{dt}=-cy(t)+dx(t)y(t)
\end{cases}
$$

$$
\begin{cases}
    \frac{dx}{dt}=-0.26x(t)+0.027x(t)y(t)\\
    \frac{dy}{dt}=0.28y(t)-0.031x(t)y(t)
\end{cases}
$$
Коэффициенты в моей программе примут значение: a=-0.26, b=-0.027, c=-0.28, d=-0.031

![Код программы для модели «хищник-жертва»](lab5p/c.jpg){ #fig:001 width=100%}

2. График зависимости численности хищников от численности жертв (@fig:002)

![График зависимости численности хищников от численности жертв](lab5p/d.jpg){ #fig:002 width=100%}

3. Графики изменения численности хищников и численности жертв (@fig:003) (@fig:004) (@fig:005)

![График изменения численности хищников](lab5p/h.jpg){ #fig:003 width=100%}

![График изменения численности жертв](lab5p/j.jpg){ #fig:004 width=100%}

![График изменения численности хищников и численности жертв](lab5p/both.jpg){ #fig:005 width=100%}

4. Стационарное состояние системы

Стационарное состояние системы (положение равновесия, не зависящее от времени решение) будет в точке: $x_0=\frac{c}{d}$, $y_0=\frac{a}{b}$.
Если начальные значения задать в стационарном состоянии, то в любой момент времени численность популяций изменяться не будет.

Стационарное состояние системы для задания:
Коэффициенты: a=-0.26, b=-0.027, c=-0.28, d=-0.031
$x_0=\frac{-0.28}{-0.031} \approx 9.032$
$y_0=\frac{-0.26}{-0.027} \approx 9.63$

Проверка в программе.  (@fig:006) (@fig:007)

![Код программы, когда начальные данные задаются в стационарном состоянии](lab5p/c2.jpg){ #fig:006 width=100%}

![График, когда начальные данные задаются в стационарном состоянии](lab5p/both2.jpg){ #fig:007 width=100%}

# Выводы

- Выполнила лабораторную работу №5.
- Познакомилась с написанием модели хищник-жертва.
- Познакомилась с написанием математических моделей при использованиии openmodelica.

# Список литературы

1. Методические материалы курса.
2. https://spravochnick.ru/informacionnye_tehnologii/informacionnye_modeli_i_modelirovanie/model_hischnik-zhertva/
3. https://ru.wikipedia.org/wiki/Система_«хищник_—_жертва»