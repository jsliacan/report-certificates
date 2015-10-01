from flagmatic.all import *

C5 = "5:1223344551"
p = GraphProblem(5, forbid="3:121323", density=C5)
p.set_extremal_construction(GraphBlowupConstruction(C5))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability("3:12", C5)
p.verify_stability("3:12", C5)
