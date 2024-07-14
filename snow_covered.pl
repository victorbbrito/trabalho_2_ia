% Definição das variáveis
li(t).
li(f).

str(dry).
str(wet).
str(snow_covered).

flw(t).
flw(f).

r(t).
r(f).

v(t).
v(f).

b(t).
b(f).

k(t).
k(f).

% CPTs
p(li(t) | v(t)) = 0.99.
p(li(f) | v(t)) = 0.01.
p(li(t) | v(f)) = 0.01.
p(li(f) | v(f)) = 0.001.

p(v(t) | r(t), str(dry)) = 0.99.
p(v(f) | r(t), str(dry)) = 0.01.
p(v(t) | r(t), str(wet)) = 0.99.
p(v(f) | r(t), str(wet)) = 0.01.
p(v(t) | r(t), str(snow_covered)) = 0.99.
p(v(f) | r(t), str(snow_covered)) = 0.01.
p(v(t) | r(f), str(dry)) = 0.01.
p(v(f) | r(f), str(dry)) = 0.99.
p(v(t) | r(f), str(wet)) = 0.01.
p(v(f) | r(f), str(wet)) = 0.99.
p(v(t) | r(f), str(snow_covered)) = 0.01.
p(v(f) | r(f), str(snow_covered)) = 0.99.

p(r(t) | str(dry), flw(t)) = 0.8.
p(r(f) | str(dry), flw(t)) = 0.2.
p(r(t) | str(wet), flw(t)) = 0.6.
p(r(f) | str(wet), flw(t)) = 0.4.
p(r(t) | str(snow_covered), flw(t)) = 0.5.
p(r(f) | str(snow_covered), flw(t)) = 0.5.

p(r(t) | str(dry), flw(f)) = 0.5.
p(r(f) | str(dry), flw(f)) = 0.5.
p(r(t) | str(wet), flw(f)) = 0.4.
p(r(f) | str(wet), flw(f)) = 0.6.
p(r(t) | str(snow_covered), flw(f)) = 0.3.
p(r(f) | str(snow_covered), flw(f)) = 0.7.

p(b(t) | r(t)) = 0.7.
p(b(f) | r(t)) = 0.3.
p(b(t) | r(f)) = 0.2.
p(b(f) | r(f)) = 0.8.

p(k(t) | r(t)) = 0.9.
p(k(f) | r(t)) = 0.1.
p(k(t) | r(f)) = 0.3.
p(k(f) | r(f)) = 0.7.

% Consulta para calcular P(V=t | Str=snow_covered)
query(v(t), str(snow_covered)).
