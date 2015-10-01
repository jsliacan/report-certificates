from flagmatic.all import *
"""
# (k,l) = (4,3) [forbid co(K_3) minimize K_4]
p = GraphProblem(6, forbid_induced="3:", density="4:121314232434", minimize=True)
p.set_extremal_construction(GraphBlowupConstruction("5:12233445511122334455"))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability("4:121324", "5:1223344551")
"""


# COMPLEMENT
# was: (k,l) = (4,3) [forbid co(K_3) minimize K_4]
# is: (k,l) = (4,3) [forbid K_3 minimize co(K_4)]
p = GraphProblem(6, forbid_induced="3:121323", density="4:", minimize=True)
p.set_extremal_construction(GraphBlowupConstruction("5:1223344551"))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability("3:12")
p.verify_perfect_stability()


"""
# (k,l) = (5,3) [forbid co(K_3) minimize K_5]
p = GraphProblem(6, forbid_induced="3:", density="5:12131415232425343545", minimize=True)
p.set_extremal_construction(GraphBlowupConstruction("5:12233445511122334455")) # not a blowup, cant auto-stabilize
p.solve_sdp()
p.make_exact()
p.verify_stability("4:121324", "5:1223344551")
"""
# COMPLEMENT
# was: (k,l) = (5,3) [forbid co(K_3) minimize K_5]
# is: (k,l) = (5,3) [forbid K_3 minimize co(K_5)]
p = GraphProblem(6, forbid_induced="3:121323", density="5:", minimize=True)
p.set_extremal_construction(GraphBlowupConstruction("5:1223344551"))
p.solve_sdp()
p.make_exact()
p.verify_robust_stability("3:12")
p.verify_perfect_stability()

"""
# --------- COMPLEMENTS ----------
# (k,l) = (6,3) [forbid K_3 minimize co(K_6)]
p = GraphProblem(7, forbid_induced="3:121323", density="6:", minimize=True)
p.set_extremal_construction(GraphBlowupConstruction("g:12131415162728292a373b3c3d484b4e4f595c5e5g6a6d6f6g7e7f7g8c8d8g9b9d9fabacaebgcfde"))
p.solve_sdp(solver="sdpa_dd")
p.make_exact(2^30)
p.verify_stability("6:1223344551", "g:12131415162728292a373b3c3d484b4e4f595c5e5g6a6d6f6g7e7f7g8c8d8g9b9d9fabacaebgcfde")
"""
