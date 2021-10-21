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