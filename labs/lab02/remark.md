---
## Front matter
title: "Отчет по лабораторной работа №4"
subtitle: "Дисциплина: архитектура компьютера"
author: "Игнатенкова В. Н."

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
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
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Выполнение лабораторной работы

Я открыла терминал, перешла в каталог arch-pc, обновила локальный репозиторий, введя git pull, перешла в каталог с шаблоном отчета по лабораторной работе №4 (рис. [-@fig:001]).

![Обновление терминала и перемещение между директориями](image/1.png){ #fig:001 width=70% }

Провожу компиляцию шаблона и проверяю корректность выполнения команды (рис. [-@fig:002]).

![Компиляция шаблона](image/3.png){ #fig:002 width=70% }

Удаляю полученные файлы и проверяю, что файлы были удалены (рис. [-@fig:003]).

![Удаление файлов](image/4.png){ #fig:003 width=70% }

Открываю файл report.md с помощью текстового редактора (рис. [-@fig:004]).

![Открытие файла с шаблоном отчета](image/5.png){ #fig:004 width=70% }

Я заполнила отчет и скомпилировала его с использованием Makefile. Отчет в трех форматах предоставлен. 

# Выполнение заданий для самостоятельной работы

Перехожу в каталог с отчетом по третьей лабораторной работе (рис. [-@fig:005]).

![Перемещение между директориями](image/6.png){ #fig:005 width=70% }

Открыла файл с шаблоном отчета и заполнила его (рис. [-@fig:006]).

![Открытие файла с шаблоном отчета](image/7.png){ #fig:006 width=70% }

Переименовала файл, в котором заполняла отчет (рис. [-@fig:007]).

![Переименование файла](image/8.png){ #fig:007 width=70% }

Компилирую отчет и проверяю, что были созданы файлы (рис. [-@fig:008]).

![Компиляция отчета](image/9.png){ #fig:008 width=70% }

Загружаю файлы на GitHub (рис. [-@fig:009]).

![Добавление файлов на GitHub](image/10.png){ #fig:009 width=70% }

# Выводы

Я освоила процедуры оформления отчетов с помощью легковесного языка разметки Markdown.
