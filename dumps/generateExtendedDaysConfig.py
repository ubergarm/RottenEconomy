#!/usr/bin/env python3

# Thanks SkeletonAdventurer aka UserWasNotFound for original script!
# https://www.curseforge.com/minecraft/mc-mods/extended-days?comment=127
# https://github.com/SilentChaos512/ExtendedDays/issues/42

# def generate_extended_periods(day_span, night_span, unit):
#     f = open("generate_extended_periods_out.txt", "w")
#     if day_span <= 10 or night_span <= 10:
#         return
#     day_time_to_add = day_span - 10
#     night_time_to_add = night_span - 10
#     day_increment = 12000 / day_time_to_add * unit
#     night_increment = 12000 / night_time_to_add * unit
#     current_day_time = 0
#     while current_day_time < 12000:
#         f.write(f"{current_day_time:.0f}" + " " + f"{unit}\n")
#         current_day_time += day_increment
#     current_night_time = 0
#     while current_night_time < 12000:
#         f.write(f"{(12000 + current_night_time):.0f}" + " " + f"{unit}\n")
#         current_night_time += night_increment
#     f.close()
#     return

# config accepts time in ticks between 0 and 23999
# 24000 ticks per day and time 0 is same as 24000
# sunrise = 23000
# morning = 0
# sunset = 12000
# night = 13000
# midnight = 18000
# add 10 minutes between sunrise and night
# 23000 to 13000

# this does *not* affect tick rate at all
# only the `/time query daytime` value

def minutesToAddBetweenSunriseAndNight(minutesAdded, delta):
    '''All units in decimal minutes'''

    timeAdded = 0
    sunrise = 23000
    night = 13000
    curTime = sunrise
    tickDelta = 14000 / int(minutesAdded / delta)
    for i in range(0, int(minutesAdded / delta)):
        tickTime = sunrise + tickDelta * i
        tickTime = tickTime % 24000
        print(f"{tickTime:.0f} {delta}")
    return

if __name__ == '__main__':
    # this will cause a 3 second "time pause" every 70 ticks (3.5 seconds)
    # so time appears to change about 46% of normal during non-spawning time
    # basically 20 minute days with regular 10 minute nights
    minutesToAddBetweenSunriseAndNight(10, 0.05)

