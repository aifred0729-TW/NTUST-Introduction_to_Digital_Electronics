* L10_P10-R_PoC.sp

r1 A B 1k
rload C 0 1k

l1 b 0 10m ic = 0
l2 b c 10m ic = 0

v1 a 0 0.001 AC 1 SIN (0 1 1MEG)

.control
ac lin 10k 1k 100k
plot v(c)
.endc

.end