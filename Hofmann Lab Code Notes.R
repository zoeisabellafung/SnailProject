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
  # use arbitrary value for now 

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
  # use lead and lag functions 5n - n
    # then choose which difference value we want to use to select 
  # remove first 30 min of data
  # calculate avg & st. dev of difference between 5-1 values
    # default crit value would be st. dev, but researcher has freedom to choose what crit value
    # don't write function yet, WRITE THE CODE TO FIND MEAN/ST DEV OF UR DATA
    # then write function around that code

# goals for week 6:
  # set an intermediate value for durafet therm, see if rest of code runs
    # add in actual function for durafet therm when collaborator gets back to Amelia
  # write the code to find the mean/standard deviation of the difference between the 5th and the 1st row
    # to help pick out the calibration values (row where temp and pH stabilize)

# notes for week 7 meeting:
  # what do we do when the rows with min pH/temp differences are not the same?
    # which measurement is the calibration priority?
  # how do we use the calibration values to calibrate the raw sensor values

# calculating durafet therm
  # Steinhart Constants
  # SH_A = 0.00106329736674527
  # SH_B = 0.000251377462346306
  # SH_C = 2.55455247726963E-08
  # K = 1 / (SH_A + SH_B * Log(R) + SH_C * (Log(R)) ^ 3)
  # DurafetTherm = K - 273.15

# goals for week 8
  # add Cal_T (column P) in the OMEGAS sheet (DONE)
    # note that it doesnt get used but added in anyway
  # add in column T (column K in Tris template) (DONE)
  # filter the 10 most minimum pH difference rows, and then filter the minimum temp difference from that to find the calibration row (DONE)
  # make sure phdiff and tempdiff are absolute values (DONE)
  # apply calibration values to actual sensor data
    # create new OMEGAS sheet for the raw data (DONE)
    # paste calibration values into top of pH OMEGAS sheet
      # will change the pH values in OMEGAS pH sheet
      # then extract temp, pH, and date/time from OMEGAS pH sheet

# eot=((calibration_values$omegas_v.v1)-(calibration_values$omegasph)*8.31451*(273.15+calibration_values$omegas_v.durafet)*LN(10)/96487)

  # goals for week 9
    # rename data frames to be less confusing (use Tris and Raw)
    # rename columns of final data frame 
      # rename("Date, Time"=1,"Temperature"=2,"pH"=3)
    # export final data frame to a csv file
      # write.csv(raw_calibrated,here="data","processed_data.csv",rownames=FALSE)
    # rename date and time columns in the raw data
      # fix the code in this chunk
    # restructure hashtags (2 hashtags > 3)
    # run different months data through the code and compare to hand-calculated values
      # especially for 9/16

  # goals for week 10
    # fix what is wrong with eo
      # run all data frames through and check with the omegas files 
    # watch shiny workshop: https://vimeo.com/356696243
      # create own shiny app
      # code i need will be in github

  # notes for week 10
    # what was wrong: was using omegas ph instead of tris ph in the calculation of eo

  # goals for winter break
https://github.com/dorisliu1104/Outreach-Fall-ShinyApp
    # go thru doris code and make edits
    # familiarize self with shiny
https://github.com/ameliaritger/lionfish-diet-choice
    # use readme template to make readme for this code


