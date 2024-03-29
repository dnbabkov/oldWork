---
marp: true
math: mathjax
---

# Задача об эпидемии
## Выполнил Бабков Дмитрий Николаевич
Группа: НФИбд-01-20, №Студенческого билета: 1032201726

---

# Простейшая модель эпидемии
Рассмотрим простейшую модель эпидемии. Предположим, что некая популяция, состоящая из N особей, (считаем, что популяция изолирована) подразделяется на три группы. Первая группа - это восприимчивые к болезни, но пока здоровые особи, обозначим их через S(t). Вторая группа – это число инфицированных особей, которые также при этом являются распространителями инфекции, обозначим их I(t). А третья группа, обозначающаяся через R(t) – это
здоровые особи с иммунитетом к болезни.

---

# Критическое значение числа заболевших

До того, как число заболевших не превышает критического значения $I^*$, считаем, что все больные изолированы и не заражают здоровых. Когда $I(t)>I^*$, тогда инфицирование способны заражать восприимчивых к болезни особей.

---

# Изменение числа здоровых людей

Таким образом, скорость изменения числа S(t) меняется по следующему закону:

$$
\frac{dS}{dt}=
\begin{equation*} 
 \begin{cases}
   -\alpha S, если \ I(t) > I^*
   \\
   0, если \ I(t) \le I^*
 \end{cases}
\end{equation*}
$$

---

# Изменение числа инфецированных людей

Поскольку каждая восприимчивая к болезни особь, которая, в конце концов, заболевает, сама становится инфекционной, то скорость изменения числа инфекционных особей представляет разность за единицу времени между заразившимися и теми, кто уже болеет и лечится, т.е.:

$$
\frac{dI}{dt}=
\begin{equation*} 
 \begin{cases}
   \alpha S - \beta I, если \ I(t) > I^*
   \\
   -\beta I, если \ I(t) \le I^*
 \end{cases}
\end{equation*}
$$

---

# Изменение числа выздоровевших людей

А скорость изменения выздоравливающих особей (при этом приобретающие иммунитет к болезни)

$$
\frac{dR}{dt} = \beta I
$$

Постоянные пропорциональности $\alpha$ и $\beta$, - это коэффициенты заболеваемости и выздоровления соответственно.

---

# Спасибо за внимание