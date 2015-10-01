from flagmatic.all import *

K6 = "6:121314151623242526343536454656"
K5 = "5:12131415232425343545"
K4 = "4:121314232434"
K3 = "3:121323"
K2 = "2:12"
K1 = "1:"


# TURAN K_6
p = GraphProblem(6, forbid=K6)
p.set_extremal_construction(GraphBlowupConstruction(K5))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability(K4)
p.verify_perfect_stability()


# TURAN K_5
p = GraphProblem(5, forbid=K5)
p.set_extremal_construction(GraphBlowupConstruction(K4))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability(K3)
p.verify_perfect_stability()


# TURAN K_4
p = GraphProblem(4, forbid=K4)
p.set_extremal_construction(GraphBlowupConstruction(K3))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability(K2)
p.verify_perfect_stability()


# TURAN K_3 (MANTEL)
p = GraphProblem(3, forbid=K3)
p.set_extremal_construction(GraphBlowupConstruction(K2))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability(K1)
p.verify_perfect_stability()
