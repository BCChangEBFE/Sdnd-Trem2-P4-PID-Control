# Sdnd-Trem2-P4-PID-Control
Implementation of Udacity project https://github.com/udacity/CarND-PID-Control-Project


## Reflection:
Among PID control,
Proportional component is the major driving force that actually allows the vehicle to somewhat follow the target. Hence as expected, Kp is also the largest constant. This also means that when tuning my PID control, this is the first parameter to start tuning. 

The Derivative component is there to help the PID controlled object to reach a transient steady state instead of being stuck in a sin wave pattern. Hence as expected Kd is smaller than Kp.

The Integral component is there to make sure that the transient steady state would to really reach zero error. Without the Integral component, the steady state might actually have a small constant error that is due to actuator/sensor error. Hence the value of Ki is much smaller than the other two constants. In some systems, integral component might not even be needed.

I have tuned the PID control manually. My approach follows the steps below,
  1. Tune Kp to be able to drive as far as possible without going off track. 
  2. Add a very minimal Ki, 
  3. Tune Kd to be able to drive as far as possible without going off track.
  4. Tune Ki to be able to drive as far as possible without going off track. 
  5. repeat 1,3,4 until the vehicle is able to successfully drive a lap around the track
