---
## Front matter
title: "Отчет по лабораторной работе №8"
subtitle: "Дисциплина: архитектура компьютера"
author: "Желобицкая П.А."

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

Приобрести навыки написания программ с использованием циклов и обработкой аргументов командной строки.

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. @tbl:std-dir приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно об Unix см. в [@gnu-doc:bash;@newham:2005:bash;@zarrelli:2017:bash;@robbins:2013:bash;@tannenbaum:arch-pc:ru;@tannenbaum:modern-os:ru].

# Выполнение лабораторной работы

Создаю каталог, перехоже в него и создаю в нем файл lab8-1.asm (рис. @fig:001).

![Создание каталога и файла](image/1.png){#fig:001 width=70%}

Ввожу в файл lab8-1.asm текст программы из листинга 8.1 (рис. @fig:002).

![Текст программы](image/2.png){#fig:002 width=70%}

Создаю исполняемый файл и проверяю его работу (рис. @fig:003).

![Создание файла](image/3.png){#fig:003 width=70%}

Вношу изменения в текст программы (рис. @fig:004).

![Внесение изменений](image/4.png){#fig:004 width=70%}

Создаю исполняемый файл и проверяю его работу (рис. @fig:005).

![Проверка работы файла](image/5.png){#fig:005 width=70%}

Вношу изменения в текст программы (рис. @fig:006).

![Внесение изменений](image/6.png){#fig:006 width=70%}

Создаю исполняемый файл и проверяю его работу (рис. @fig:007).

![Проверка работы файла](image/7.png){#fig:007 width=70%}

Создаю файл lab8-2.asm (рис. @fig:008).

![Создание файла](image/8.png){#fig:008 width=70%}

Ввожу в этот файл текст программы из листинга 8.2 (рис. @fig:009).

![Ввод программы](image/9.png){#fig:009 width=70%}

Создаю исполняемый файл и запускаю его (рис. @fig:010).

![Запуск файла](image/10.png){#fig:010 width=70%}

Создаю файл lab8-3.asm (рис. @fig:011).

![Создание файла](image/11.png){#fig:011 width=70%}

Ввожу в этот файл текст программы из листинга 8.3 (рис. @fig:012).

![Ввод программы](image/12.png){#fig:012 width=70%}

Создаю исполняемый файл и запускаю его (рис. @fig:013).

![Ввод программы](image/13.png){#fig:013 width=70%}

Вношу изменения в текст программы из листинга 8.3 для вычисления произведения аргументов командной строки (рис. @fig:014).

![Изменения в программе](image/14.png){#fig:014 width=70%}

Создаю исполняемый файл, запускаю его и проверяю его работу (рис. @fig:015).

![Проверка работы файла](image/15.png){#fig:015 width=70%}

# Выполнение заданий самостоятельной работы

Создаю файл lab8-4.asm (рис. @fig:016).

![Создание файл](image/16.png){#fig:016 width=70%}

Пишу программу, которая выполняет условия (рис. @fig:017).

![Написание программы](image/17.png){#fig:017 width=70%}

Создаю исполняемый файл, запускаю его и проверяю его работу (рис. @fig:018).

![Проверка работы программы](image/18.png){#fig:018 width=70%}

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. @fig:001).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:001 width=70%}

# Выводы

Я получила навыки по организации циклов и работе со стеком на языке NASM.

# Список литературы{.unnumbered}

::: {#refs}
:::
