test_vaddfp128_1:
  # v3 = [10.0, -10.0, 15.0, -15.0]
  # v4 = [-10.0, 20.0, -20.0, 30.0]
  #_ REGISTER_IN v3 [41200000, C1200000, 41700000, C1700000]
  #_ REGISTER_IN v4 [C1200000, 41A00000, C1A00000, 41F00000]
  vaddfp128 v0, v3, v4
  blr
  #_ REGISTER_OUT v0 [00000000, 41200000, C0A00000, 41700000]
  #_ REGISTER_OUT v3 [41200000, C1200000, 41700000, C1700000]
  #_ REGISTER_OUT v4 [C1200000, 41A00000, C1A00000, 41F00000]
