/*
breezystm32.h : general header for BreezySTM32 library

Copyright (C) 2016 Simon D. Levy 

This file is part of BreezySTM32.

BreezySTM32 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

BreezySTM32 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with BreezySTM32.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>
#include <string.h>
#include <stdio.h>

#include "platform.h"
#include "system.h"
#include "gpio.h"
#include "io.h"
#include "serial.h"
#include "timer.h"
#include "serial_usb_vcp.h"
#include "exti.h"
#include "ioserial.h"
#include "system.h"
#include "light_led.h"
#include "i2c.h"
#include "serial_uart.h"
#include "motors.h"
#include "pwm_output.h"

extern serialPort_t * Serial1;

void debug(const char * fmt, ...);

void setup(void);
void loop(void);
