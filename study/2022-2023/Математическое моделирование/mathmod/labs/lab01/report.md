---
## Front matter
title: "Отчёт по лабораторной работе №1"
author: "Бабков Дмитрий Николаевич"

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
Вспомнить методы работы с Markdown и GitHub

# Задание
Сделать репозиторий для лабораторных работ на Github, написать отчёт в Markdown

# Теоретическое введение
Для выполнения лабораторной работы необходимо зарегистрироваться на сайте Github.com, с помощью Visual Studio Code и приложения GitHub Desktop создать репозиторий, сделать необходимые по требованиям папки для разных заданий по данному предмету.

# Выполнение лабораторной работы
Будучи зарегистрированным на сайте Github.com и скачав приложение GitHub Desktop, я создал на диске D репозиторий под названием work

![Создание нового репозитория](./images/Созданиерепозитория1.png "Создание нового репозитория")

![Создание нового репозитория](./images/%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%D1%80%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D1%8F.png "Создание репозитория work на диске D")

После этого я открыл репозиторий с помощью Visual Studio Code:

![Открытие репозитория](./images/ОткрытьвВСКод.png "Открытие репозитория")

Открыв репозиторий, я создал необходимые по шаблону папки, и создал файл report с расширением md, в котором начал писать отчёт по проделанной работе:

![Репорт в нужной папке](./images/файловаясистемадляГит.png)

После всего этого я сделал Commit и Push изменений на Гитхаб в приложении GitHub Desktop:

![Commit to main](./images/CommitToMain.png "Commit")
![Push](./images/PushCommit.png "Push")

И после всех этих действий, файл report и остальные папки появились в репозитории work на GitHub:

![Репорт в репозитории на Гитхаб](./images/%D1%84%D0%B0%D0%B9%D0%BBreport%D0%B2%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B9%D0%BF%D0%B0%D0%BF%D0%BA%D0%B5.png)

# Выводы
В ходе лабораторной работы был создан репозиторий на Github и отчёт о выполнении лабораторной работы в Markdown