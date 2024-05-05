* L10_P11_PoC.sp

r1 a b 1k
r2 b c 1k
r3 d 0 1k
rload c 0 1k

c1 b 0 10n
c2 a d 10n
c3 d c 10n

v1 a 0 0.001 AC 1 SIN (0 1 1MEG)

.control
ac lin 10k 1k 100k
plot v(c)
.endc

.end