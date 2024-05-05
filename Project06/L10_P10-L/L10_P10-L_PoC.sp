* L10_P10-L_PoC.sp

r1 a b 1k
rload c 0 1k

c1 b 0 10n ic = 0
c2 b c 10n ic = 0

v1 a 0 0.001 AC 1 SIN (0 1 1MEG)

.control
ac lin 10k 1k 100k
plot v(c)
.endc

.end