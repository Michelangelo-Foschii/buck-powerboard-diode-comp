V1 VIN_28V GND DC 28
VSW SW_3V3 GND PULSE(0 28 0 10n 10n 0.59u 5u)
RLOAD VOUT_3V3 GND 33

.control
tran 10n 2m
set hcopydevtype = svg

* Graph 1: VIN and VOUT only
plot v(VIN_28V) v(VOUT_3V3)
hardcopy output/vin_vout.svg v(VIN_28V) v(VOUT_3V3)

* Graph 2: switch node only
plot v(SW_3V3)
hardcopy output/sw_only.svg v(SW_3V3)

* Graph 3: zoomed VOUT only
plot v(VOUT_3V3)
hardcopy output/vout_only.svg v(VOUT_3V3)

* Save numeric data
wrdata output/powerboard_data.txt v(VIN_28V) v(VOUT_3V3) v(SW_3V3)

* Measurements
meas tran VOUT_AVG AVG v(VOUT_3V3) from=1.5m to=2m
meas tran VOUT_MAX MAX v(VOUT_3V3) from=1.5m to=2m
meas tran VOUT_MIN MIN v(VOUT_3V3) from=1.5m to=2m

.endc