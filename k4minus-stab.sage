from flagmatic.all import *

K5 = "5:12131415232425343545"
p = GraphProblem(7, density="4:1213142334")
p.set_extremal_construction(GraphBlowupConstruction(K5))
p.solve_sdp()
p.make_exact(denominator=1500)
p.verify_robust_stability(K5) #feeding \tau, but F=\tau in this case
p.verify_perfect_stability()
