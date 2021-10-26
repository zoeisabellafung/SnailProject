# do we actually need all of the voltages ? 
  # only voltage 2 and voltage 4 appear to be being used

# to calculate "Rthermistor"
  # 101.57 * (voltage2/100) = Vbattery
  # (voltage4/100) + Vbattery * (15000/(1000000+15000)) = Z
  # Z * 1000000 = Y
  # Vbattery - Z
  # Rthermistor = Y/(Vbattery-Z)
    # should there be a specific name for the intermediate values (Z/Y)?

# having trouble pushing my code to git: can I write down the instructions to do so
  # how often should i be updating my code in git?
  # need to commit before pushing ; push every time day !!!
  # pull before you start working on your code in case someone has made changes 

# more hashtags = larger header in r markdown

# what is the function for durafet therm?

# pH = N + O + P
  # N = (B-(C*M)-(D*M*M))*1/K
    # B = 11911.08
    # C = 18.2499
    # D = 0.039336
    # M = 35
    # K = 273.15
  # O = -E+(F*M)+(G*M*M)
    # E = 366.27059
    # F = 0.53993607
    # G = 0.00016329
    # M = 35
  # P = (H-(I*M))*ln(K)-(J*(K))
    # H = 64.52243
    # I = 0.084041
    # J = 0.11149858
    # K = 273. 15
    # M = 35

# to find where temp and pH stabilize...would I use select function? 
  # how would i just select one row? 
  
