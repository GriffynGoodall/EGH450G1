#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>
#include "params.h"
#include "param_gen.h"
#include "mavlink_system.h"
#include "mavlink_transmit.h"
#include "controller.h"
#include "sensors.h"
#include "profiler.h"
#include "pid_controller.h"
#include "fix16.h"

void set_param_defaults(void) {
	init_param_uint(PARAM_BATTERY_TYPE, 0);
	init_param_uint(PARAM_BATTERY_PERIOD, 10000);
	init_param_uint(PARAM_BATTERY_FUNCTION, 0);
	init_param_uint(PARAM_BATTERY_CELL_NUM, 0);
	init_param_fix16(PARAM_BATTERY_CELL_MIN, fix16_from_float(3.7f));
	init_param_fix16(PARAM_BATTERY_CELL_MAX, fix16_from_float(4.2f));
	init_param_fix16(PARAM_BATTERY_READING_FILTER, fix16_from_float(0.8f));
	init_param_fix16(PARAM_BATTERY_DIVIDER, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_BATTERY_CHARGE_STATE_LOW, fix16_from_float(0.2f));
	init_param_fix16(PARAM_BATTERY_CHARGE_STATE_CRITICAL, fix16_from_float(0.1f));
	init_param_fix16(PARAM_BATTERY_CHARGE_STATE_EMERGENCY, fix16_from_float(0.05f));
	init_param_uint(PARAM_CAL_IMU_PASSES, 1000);
	init_param_int(PARAM_GYRO_X_BIAS, 0);
	init_param_int(PARAM_GYRO_Y_BIAS, 0);
	init_param_int(PARAM_GYRO_Z_BIAS, 0);
	init_param_int(PARAM_ACC_X_BIAS, 0);
	init_param_int(PARAM_ACC_Y_BIAS, 0);
	init_param_int(PARAM_ACC_Z_BIAS, 0);
	init_param_fix16(PARAM_ACC_X_SCALE_POS, fix16_from_float(1.0f));
	init_param_fix16(PARAM_ACC_X_SCALE_NEG, fix16_from_float(1.0f));
	init_param_fix16(PARAM_ACC_Y_SCALE_POS, fix16_from_float(1.0f));
	init_param_fix16(PARAM_ACC_Y_SCALE_NEG, fix16_from_float(1.0f));
	init_param_fix16(PARAM_ACC_Z_SCALE_POS, fix16_from_float(1.0f));
	init_param_fix16(PARAM_ACC_Z_SCALE_NEG, fix16_from_float(1.0f));
	init_param_fix16(PARAM_ACC_X_TEMP_COMP, fix16_from_float(0.0f));
	init_param_fix16(PARAM_ACC_Y_TEMP_COMP, fix16_from_float(0.0f));
	init_param_fix16(PARAM_ACC_Z_TEMP_COMP, fix16_from_float(0.0f));
	init_param_uint(PARAM_RC1_MIN, 1000);
	init_param_uint(PARAM_RC1_MID, 1500);
	init_param_uint(PARAM_RC1_MAX, 2000);
	init_param_fix16(PARAM_RC1_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC1_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_RC2_MIN, 1000);
	init_param_uint(PARAM_RC2_MID, 1500);
	init_param_uint(PARAM_RC2_MAX, 2000);
	init_param_fix16(PARAM_RC2_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC2_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_RC3_MIN, 1000);
	init_param_uint(PARAM_RC3_MID, 1500);
	init_param_uint(PARAM_RC3_MAX, 2000);
	init_param_fix16(PARAM_RC3_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC3_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_RC4_MIN, 1000);
	init_param_uint(PARAM_RC4_MID, 1500);
	init_param_uint(PARAM_RC4_MAX, 2000);
	init_param_fix16(PARAM_RC4_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC4_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_RC5_MIN, 1000);
	init_param_uint(PARAM_RC5_MID, 1500);
	init_param_uint(PARAM_RC5_MAX, 2000);
	init_param_fix16(PARAM_RC5_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC5_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_RC6_MIN, 1000);
	init_param_uint(PARAM_RC6_MID, 1500);
	init_param_uint(PARAM_RC6_MAX, 2000);
	init_param_fix16(PARAM_RC6_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC6_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_RC7_MIN, 1000);
	init_param_uint(PARAM_RC7_MID, 1500);
	init_param_uint(PARAM_RC7_MAX, 2000);
	init_param_fix16(PARAM_RC7_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC7_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_RC8_MIN, 1000);
	init_param_uint(PARAM_RC8_MID, 1500);
	init_param_uint(PARAM_RC8_MAX, 2000);
	init_param_fix16(PARAM_RC8_REV, fix16_from_float(1.0f));
	init_param_fix16(PARAM_RC8_DZ, fix16_from_float(0.02f));
	init_param_uint(PARAM_DO_ESC_CAL, 0);
	init_param_uint(PARAM_SYSTEM_ID, 1);
	init_param_uint(PARAM_COMPONENT_ID, 1);
	init_param_uint(PARAM_STRICT_GCS_MATCH, 0);
	init_param_uint(PARAM_GCS_SYSTEM_ID, 1);
	init_param_uint(PARAM_GCS_COMPONENT_ID, 240);
	init_param_uint(PARAM_BAUD_RATE_0, 115200);
	init_param_uint(PARAM_BAUD_RATE_1, 0);
	init_param_uint(PARAM_WAIT_FOR_HEARTBEAT, 1);
	init_param_fix16(PARAM_STREAM_RATE_HEARTBEAT_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_STATUS_IO_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_SYS_STATUS_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_HIGHRES_IMU_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_ATTITUDE_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_ATTITUDE_QUATERNION_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_ATTITUDE_TARGET_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_RC_CHANNELS_RAW_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_SERVO_OUTPUT_RAW_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_TIMESYNC_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_BATTERY_STATUS_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_LOW_PRIORITY_0, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_HEARTBEAT_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_STATUS_IO_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_SYS_STATUS_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_HIGHRES_IMU_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_ATTITUDE_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_ATTITUDE_QUATERNION_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_ATTITUDE_TARGET_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_RC_CHANNELS_RAW_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_SERVO_OUTPUT_RAW_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_TIMESYNC_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_BATTERY_STATUS_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_STREAM_RATE_LOW_PRIORITY_1, fix16_from_float(-1.0f));
	init_param_fix16(PARAM_RATE_CONTROL, fix16_from_float(250.0f));
	init_param_uint(PARAM_CONTROL_OB_FUSE_YAW_RATE, 0);
	init_param_fix16(PARAM_PID_ROLL_RATE_P, fix16_from_float(7.5f));
	init_param_fix16(PARAM_PID_ROLL_RATE_I, fix16_from_float(1.0f));
	init_param_fix16(PARAM_PID_ROLL_RATE_D, fix16_from_float(0.15f));
	init_param_fix16(PARAM_MAX_ROLL_RATE, fix16_from_float(3.14159f));
	init_param_fix16(PARAM_PID_PITCH_RATE_P, fix16_from_float(7.5f));
	init_param_fix16(PARAM_PID_PITCH_RATE_I, fix16_from_float(1.0f));
	init_param_fix16(PARAM_PID_PITCH_RATE_D, fix16_from_float(0.15f));
	init_param_fix16(PARAM_MAX_PITCH_RATE, fix16_from_float(3.14159f));
	init_param_fix16(PARAM_PID_YAW_RATE_P, fix16_from_float(10.0f));
	init_param_fix16(PARAM_PID_YAW_RATE_I, fix16_from_float(5.0f));
	init_param_fix16(PARAM_PID_YAW_RATE_D, fix16_from_float(0.0f));
	init_param_fix16(PARAM_MAX_YAW_RATE, fix16_from_float(1.57079f));
	init_param_fix16(PARAM_MC_ANGLE_P, fix16_from_float(4.5f));
	init_param_fix16(PARAM_MAX_ROLL_ANGLE, fix16_from_float(0.786f));
	init_param_fix16(PARAM_MAX_PITCH_ANGLE, fix16_from_float(0.786f));
	init_param_fix16(PARAM_MC_ANGLE_YAW_W, fix16_from_float(0.6f));
	init_param_uint(PARAM_EST_INIT_TIME, 1000000);
	init_param_uint(PARAM_EST_USE_HDG_FUSION, 1);
	init_param_uint(PARAM_EST_USE_LEVEL_HORIZON, 1);
	init_param_fix16(PARAM_EST_LEVEL_HORIZON_W, fix16_from_float(1.0f));
	init_param_fix16(PARAM_EST_LEVEL_HORIZON_X, fix16_from_float(0.0f));
	init_param_fix16(PARAM_EST_LEVEL_HORIZON_Y, fix16_from_float(0.0f));
	init_param_fix16(PARAM_EST_LEVEL_HORIZON_Z, fix16_from_float(0.0f));
	init_param_fix16(PARAM_EST_ACC_KP, fix16_from_float(0.2f));
	init_param_fix16(PARAM_EST_BIAS_KI, fix16_from_float(0.1f));
	init_param_fix16(PARAM_EST_BIAS_MAX, fix16_from_float(0.05f));
	init_param_fix16(PARAM_GYRO_ALPHA, fix16_from_float(0.04f));
	init_param_fix16(PARAM_ACC_ALPHA, fix16_from_float(0.04f));
	init_param_fix16(PARAM_EST_MAG_DECL, fix16_from_float(0.0f));
	init_param_fix16(PARAM_EST_HDG_P_EXT, fix16_from_float(10.0f));
	init_param_fix16(PARAM_EST_HDG_P_MAG, fix16_from_float(5.0f));
	init_param_uint(PARAM_ACTUATORS_RC_PWM_MAP, 0);
	init_param_uint(PARAM_ACTUATORS_RC_DIGITAL_MAP, 0);
	init_param_uint(PARAM_ACTUATORS_OB_PWM_MAP, 0);
	init_param_uint(PARAM_ACTUATORS_OB_DIGITAL_MAP, 0);
	init_param_uint(PARAM_ACTUATORS_RC_RESPECT_ARM, 1);
	init_param_fix16(PARAM_ACTUATORS_RC_PWM_DISARM_VALUE, fix16_from_float(0.0f));
	init_param_uint(PARAM_ACTUATORS_RC_DIGITAL_DISARM_VALUE, 0);
	init_param_uint(PARAM_ACTUATORS_OB_RESPECT_ARM, 1);
	init_param_fix16(PARAM_ACTUATORS_OB_PWM_DISARM_VALUE, fix16_from_float(0.0f));
	init_param_uint(PARAM_ACTUATORS_OB_DIGITAL_DISARM_VALUE, 0);
	init_param_uint(PARAM_ACTUATORS_AUX_DISARM_ZERO_OUTPUT, 1);
	init_param_uint(PARAM_MOTOR_PWM_LINEARIZE, 1);
	init_param_uint(PARAM_SERVO_PWM_SEND_RATE, 50);
	init_param_uint(PARAM_MOTOR_PWM_SEND_RATE, 400);
	init_param_uint(PARAM_MOTOR_PWM_IDLE, 1150);
	init_param_uint(PARAM_MOTOR_PWM_MIN, 1000);
	init_param_uint(PARAM_MOTOR_PWM_MAX, 2000);
	init_param_uint(PARAM_MAV_TYPE, 0);
	init_param_uint(PARAM_MIXER, 0);
	init_param_uint(PARAM_RC_MAP_ROLL, 0);
	init_param_uint(PARAM_RC_MAP_PITCH, 0);
	init_param_uint(PARAM_RC_MAP_YAW, 0);
	init_param_uint(PARAM_RC_MAP_THROTTLE, 0);
	init_param_uint(PARAM_RC_MAP_MODE_SW, 0);
	init_param_uint(PARAM_RC_MODE_DEFAULT, 0);
	init_param_fix16(PARAM_RC_MODE_RANGE, fix16_from_float(0.1f));
	init_param_fix16(PARAM_RC_MODE_STAB, fix16_from_float(0.1f));
	init_param_fix16(PARAM_RC_MODE_ACRO, fix16_from_float(0.0f));
	init_param_fix16(PARAM_RC_MODE_OFFBOARD, fix16_from_float(0.9f));
	init_param_uint(PARAM_RC_ARM_TIMER, 1000000);
	init_param_uint(PARAM_RC_FULL_RANGE_THRUST, 0);
	init_param_uint(PARAM_RC_PPM_PPM_PULSE_TYPE, 1);
	init_param_uint(PARAM_RC_PPM_PPM_DATA_MIN, 800);
	init_param_uint(PARAM_RC_PPM_PPM_DATA_MAX, 2200);
	init_param_uint(PARAM_RC_PPM_PPM_SYNC_MIN, 2700);
	init_param_uint(PARAM_RC_PPM_PPM_SYNC_MAX, 30000);
	init_param_fix16(PARAM_TIMESYNC_ALPHA, fix16_from_float(0.8f));
	init_param_uint(PARAM_SENSOR_HIL_CBRK, 0);
	init_param_uint(PARAM_SENSOR_SAFETY_CBRK, 1);
	init_param_uint(PARAM_SENSOR_RC_SAFETY_CBRK, 1);
	init_param_fix16(PARAM_SENSOR_MAG_UPDATE_RATE, fix16_from_float(0.0f));
	init_param_fix16(PARAM_SENSOR_BARO_UPDATE_RATE, fix16_from_float(0.0f));
	init_param_fix16(PARAM_SENSOR_SONAR_UPDATE_RATE, fix16_from_float(0.0f));
	init_param_uint(PARAM_SENSOR_HIL_STRM_COUNT, 100);
	init_param_uint(PARAM_SENSOR_IMU_STRM_COUNT, 1000);
	init_param_uint(PARAM_SENSOR_BARO_STRM_COUNT, 50);
	init_param_uint(PARAM_SENSOR_SONAR_STRM_COUNT, 50);
	init_param_uint(PARAM_SENSOR_RC_INPUT_STRM_COUNT, 100);
	init_param_uint(PARAM_SENSOR_EXT_POSE_STRM_COUNT, 10);
	init_param_uint(PARAM_SENSOR_MAG_STRM_COUNT, 50);
	init_param_uint(PARAM_SENSOR_OFFB_HRBT_STRM_COUNT, 2);
	init_param_uint(PARAM_SENSOR_OFFB_CTRL_STRM_COUNT, 100);
	init_param_uint(PARAM_SENSOR_OFFB_G0_STRM_COUNT, 100);
	init_param_uint(PARAM_SENSOR_OFFB_G1_STRM_COUNT, 100);
	init_param_uint(PARAM_SENSOR_PWM_CTRL_STRM_COUNT, 100);
	init_param_uint(PARAM_SENSOR_HIL_TIMEOUT, 500000);
	init_param_uint(PARAM_SENSOR_IMU_TIMEOUT, 4000);
	init_param_uint(PARAM_SENSOR_MAG_TIMEOUT, 100000);
	init_param_uint(PARAM_SENSOR_BARO_TIMEOUT, 100000);
	init_param_uint(PARAM_SENSOR_SONAR_TIMEOUT, 100000);
	init_param_uint(PARAM_SENSOR_RC_INPUT_TIMEOUT, 1000000);
	init_param_uint(PARAM_SENSOR_EXT_POSE_TIMEOUT, 1000000);
	init_param_uint(PARAM_SENSOR_OFFB_HRBT_TIMEOUT, 5000000);
	init_param_uint(PARAM_SENSOR_OFFB_CTRL_TIMEOUT, 400000);
	init_param_uint(PARAM_SENSOR_OFFB_G0_TIMEOUT, 400000);
	init_param_uint(PARAM_SENSOR_OFFB_G1_TIMEOUT, 400000);
	init_param_uint(PARAM_SENSOR_PWM_CTRL_TIMEOUT, 400000);
	init_param_uint(PARAM_VERSION_FIRMWARE, strtoll(GIT_VERSION_FLIGHT_STR, NULL, 16));
	init_param_uint(PARAM_VERSION_SOFTWARE, strtoll(GIT_VERSION_OS_STR, NULL, 16));
	init_param_uint(PARAM_RELAXED_PARAM_SET, 1);
	init_param_uint(PARAM_SAFETY_BUTTON_HYST, 1000000);
	init_param_fix16(PARAM_FAILSAFE_THROTTLE, fix16_from_float(0.2f));
	init_param_uint(PARAM_THROTTLE_TIMEOUT, 10000000);
	init_param_fix16(PARAM_THROTTLE_TIMEOUT_VALUE, fix16_from_float(0.05f));
	init_param_uint(PARAM_CRITICAL_TIMEOUT, 5000000);
	init_param_uint(PARAM_RESET_PARAMS, 0);
	init_param_fix16(PARAM_DEBUG_PROFILING, fix16_from_float(0.0f));
}

const char _param_names[PARAMS_COUNT][MAVLINK_MSG_PARAM_VALUE_FIELD_PARAM_ID_LEN] = {
	"BAT_TYPE",
	"BAT_PERIOD_US",
	"BAT_FUNC",
	"BAT_N_CELLS",
	"BAT_V_EMPTY",
	"BAT_V_CHARGED",
	"BAT_FILTER",
	"BAT_V_DIV",
	"BAT_LOW_THR",
	"BAT_CRIT_THR",
	"BAT_EMERGEN_THR",
	"CAL_IMU_PASSES",
	"GYRO_X_BIAS",
	"GYRO_Y_BIAS",
	"GYRO_Z_BIAS",
	"ACC_X_BIAS",
	"ACC_Y_BIAS",
	"ACC_Z_BIAS",
	"ACC_X_S_POS",
	"ACC_X_S_NEG",
	"ACC_Y_S_POS",
	"ACC_Y_S_NEG",
	"ACC_Z_S_POS",
	"ACC_Z_S_NEG",
	"ACC_X_TEMP_COMP",
	"ACC_Y_TEMP_COMP",
	"ACC_Z_TEMP_COMP",
	"RC1_MIN",
	"RC1_TRIM",
	"RC1_MAX",
	"RC1_REV",
	"RC1_DZ",
	"RC2_MIN",
	"RC2_TRIM",
	"RC2_MAX",
	"RC2_REV",
	"RC2_DZ",
	"RC3_MIN",
	"RC3_TRIM",
	"RC3_MAX",
	"RC3_REV",
	"RC3_DZ",
	"RC4_MIN",
	"RC4_TRIM",
	"RC4_MAX",
	"RC4_REV",
	"RC4_DZ",
	"RC5_MIN",
	"RC5_TRIM",
	"RC5_MAX",
	"RC5_REV",
	"RC5_DZ",
	"RC6_MIN",
	"RC6_TRIM",
	"RC6_MAX",
	"RC6_REV",
	"RC6_DZ",
	"RC7_MIN",
	"RC7_TRIM",
	"RC7_MAX",
	"RC7_REV",
	"RC7_DZ",
	"RC8_MIN",
	"RC8_TRIM",
	"RC8_MAX",
	"RC8_REV",
	"RC8_DZ",
	"DO_ESC_CAL",
	"MAV_SYS_ID",
	"MAV_COMP_ID",
	"GCS_MATCH",
	"GCS_SYS_ID",
	"GCS_COMP_ID",
	"BAUD_RATE_0",
	"BAUD_RATE_1",
	"COMMS_WAIT",
	"STRM0_HRTBT",
	"STRM0_STATUS_IO",
	"STRM0_SYS_STAT",
	"STRM0_HR_IMU",
	"STRM0_ATT",
	"STRM0_ATT_Q",
	"STRM0_ATT_T",
	"STRM0_RC_IN",
	"STRM0_SRV_OUT",
	"STRM0_TIMESYNC",
	"STRM0_BATTSTAT",
	"STRM0_LPQ",
	"STRM1_HRTBT",
	"STRM1_STATUS_IO",
	"STRM1_SYS_STAT",
	"STRM1_HR_IMU",
	"STRM1_ATT",
	"STRM1_ATT_Q",
	"STRM1_ATT_T",
	"STRM1_RC_IN",
	"STRM1_SRV_OUT",
	"STRM1_TIMESYNC",
	"STRM1_BATTSTAT",
	"STRM1_LPQ",
	"RATE_CONTROL",
	"MC_FUSE_YAWRATE",
	"MC_ROLLRATE_P",
	"MC_ROLLRATE_I",
	"MC_ROLLRATE_D",
	"MC_ROLLRATE_MAX",
	"MC_PITCHRATE_P",
	"MC_PITCHRATE_I",
	"MC_PITCHRATE_D",
	"MC_PITCHRATE_MAX",
	"MC_YAWRATE_P",
	"MC_YAWRATE_I",
	"MC_YAWRATE_D",
	"MC_YAWRATE_MAX",
	"MC_ANGLE_P",
	"MAX_ROLL_A",
	"MAX_PITCH_A",
	"MC_YAW_W",
	"EST_INIT_TIME",
	"EST_FUSE_HDG",
	"EST_LVL_HORZ",
	"EST_LVL_HORZ_W",
	"EST_LVL_HORZ_X",
	"EST_LVL_HORZ_Y",
	"EST_LVL_HORZ_Z",
	"EST_ACC_KP",
	"EST_W_BIAS_KI",
	"EST_W_BIAS_MAX",
	"EST_LPF_GYRO_A",
	"EST_LPF_ACC_A",
	"EST_MAG_DECL",
	"EST_HDG_P_EXT",
	"EST_HDG_P_MAG",
	"ACTUATOR_RCPMAP",
	"ACTUATOR_RCDMAP",
	"ACTUATOR_OBPMAP",
	"ACTUATOR_OBDMAP",
	"ACTUATOR_RC_ARM",
	"ACTUATOR_RC_PDV",
	"ACTUATOR_RC_DDV",
	"ACTUATOR_OB_ARM",
	"ACTUATOR_OB_PDV",
	"ACTUATOR_OB_DDV",
	"ACTUATOR_AUX_ZO",
	"PWM_NONLINEAR_M",
	"PWM_RATE_S",
	"PWM_RATE_M",
	"PWM_IDLE",
	"PWM_MIN",
	"PWM_MAX",
	"MAV_TYPE",
	"SYS_AUTOSTART",
	"RC_MAP_ROLL",
	"RC_MAP_PITCH",
	"RC_MAP_YAW",
	"RC_MAP_THROTTLE",
	"RC_MAP_MODE_SW",
	"RC_MODE_DEFAULT",
	"RC_MODE_RANGE",
	"RC_MODE_STAB",
	"RC_MODE_ACRO",
	"RC_MODE_OFFB",
	"COM_RC_ARM_HYST",
	"RC_FR_THRUST",
	"RC_PPM_PULSE_T",
	"RC_PPM_DATA_MIN",
	"RC_PPM_DATA_MAX",
	"RC_PPM_SYNC_MIN",
	"RC_PPM_SYNC_MAX",
	"TIMESYNC_ALPHA",
	"CBRK_HIL",
	"CBRK_SAFETY",
	"CBRK_RC_SAFETY",
	"CHK_RATE_MAG",
	"CHK_RATE_BARO",
	"CHK_RATE_SONAR",
	"STRM_NUM_HIL",
	"STRM_NUM_IMU",
	"STRM_NUM_BARO",
	"STRM_NUM_SONAR",
	"STRM_NUM_RC_IN",
	"STRM_NUM_EXT_P",
	"STRM_NUM_MAG",
	"STRM_NUM_OB_H",
	"STRM_NUM_OB_C",
	"STRM_NUM_OB_G0",
	"STRM_NUM_OB_G1",
	"STRM_NUM_RC_C",
	"TIMEOUT_HIL",
	"TIMEOUT_IMU",
	"TIMEOUT_MAG",
	"TIMEOUT_BARO",
	"TIMEOUT_SONAR",
	"TIMEOUT_RC_IN",
	"TIMEOUT_EXT_P",
	"TIMEOUT_OB_HRBT",
	"TIMEOUT_OB_CTRL",
	"TIMEOUT_OB_G0",
	"TIMEOUT_OB_G1",
	"TIMEOUT_OB_PWM",
	"VERSION_FW",
	"VERSION_SW",
	"RELAXED_SET",
	"SAFETY_HYST",
	"FAILSAFE_THRTL",
	"TIMEOUT_THRTL",
	"TIMEOUT_THRTL_V",
	"TIMEOUT_CRIT_EM",
	"SYS_AUTOCONFIG",
	"DEBUG_PROFILING",
};

const MAV_PARAM_TYPE _param_types[PARAMS_COUNT] = {
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_INT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_INT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_INT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_INT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_INT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_INT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_UINT32_T,
	(MAV_PARAM_TYPE)MAVLINK_TYPE_FLOAT,
};

void param_change_callback(param_id_t id) {
	switch(id) {
		case PARAM_RC1_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC1_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC1_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC1_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_RC2_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC2_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC2_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC2_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_RC3_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC3_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC3_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC3_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_RC4_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC4_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC4_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC4_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_RC5_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC5_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC5_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC5_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_RC6_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC6_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC6_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC6_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_RC7_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC7_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC7_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC7_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_RC8_MIN:
			sensors_update_rc_cal();
			break;
		case PARAM_RC8_MID:
			sensors_update_rc_cal();
			break;
		case PARAM_RC8_MAX:
			sensors_update_rc_cal();
			break;
		case PARAM_RC8_REV:
			sensors_update_rc_cal();
			break;
		case PARAM_STREAM_RATE_HEARTBEAT_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_HEARTBEAT);
			break;
		case PARAM_STREAM_RATE_STATUS_IO_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_STATUS_IO);
			break;
		case PARAM_STREAM_RATE_SYS_STATUS_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_SYS_STATUS);
			break;
		case PARAM_STREAM_RATE_HIGHRES_IMU_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_HIGHRES_IMU);
			break;
		case PARAM_STREAM_RATE_ATTITUDE_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_ATTITUDE);
			break;
		case PARAM_STREAM_RATE_ATTITUDE_QUATERNION_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_ATTITUDE_QUATERNION);
			break;
		case PARAM_STREAM_RATE_ATTITUDE_TARGET_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_ATTITUDE_TARGET);
			break;
		case PARAM_STREAM_RATE_RC_CHANNELS_RAW_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_RC_CHANNELS_RAW);
			break;
		case PARAM_STREAM_RATE_SERVO_OUTPUT_RAW_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_SERVO_OUTPUT_RAW);
			break;
		case PARAM_STREAM_RATE_TIMESYNC_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_TIMESYNC);
			break;
		case PARAM_STREAM_RATE_BATTERY_STATUS_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_BATTERY_STATUS);
			break;
		case PARAM_STREAM_RATE_LOW_PRIORITY_0:
			communication_calc_period_update(COMM_PORT_0, MAVLINK_STREAM_ID_LOW_PRIORITY);
			break;
		case PARAM_STREAM_RATE_HEARTBEAT_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_HEARTBEAT);
			break;
		case PARAM_STREAM_RATE_STATUS_IO_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_STATUS_IO);
			break;
		case PARAM_STREAM_RATE_SYS_STATUS_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_SYS_STATUS);
			break;
		case PARAM_STREAM_RATE_HIGHRES_IMU_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_HIGHRES_IMU);
			break;
		case PARAM_STREAM_RATE_ATTITUDE_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_ATTITUDE);
			break;
		case PARAM_STREAM_RATE_ATTITUDE_QUATERNION_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_ATTITUDE_QUATERNION);
			break;
		case PARAM_STREAM_RATE_ATTITUDE_TARGET_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_ATTITUDE_TARGET);
			break;
		case PARAM_STREAM_RATE_RC_CHANNELS_RAW_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_RC_CHANNELS_RAW);
			break;
		case PARAM_STREAM_RATE_SERVO_OUTPUT_RAW_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_SERVO_OUTPUT_RAW);
			break;
		case PARAM_STREAM_RATE_TIMESYNC_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_TIMESYNC);
			break;
		case PARAM_STREAM_RATE_BATTERY_STATUS_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_BATTERY_STATUS);
			break;
		case PARAM_STREAM_RATE_LOW_PRIORITY_1:
			communication_calc_period_update(COMM_PORT_1, MAVLINK_STREAM_ID_LOW_PRIORITY);
			break;
		case PARAM_PID_ROLL_RATE_P:
			pid_set_gain_p(&_pid_roll_rate, get_param_fix16(PARAM_PID_ROLL_RATE_P));
			break;
		case PARAM_PID_ROLL_RATE_I:
			pid_set_gain_i(&_pid_roll_rate, get_param_fix16(PARAM_PID_ROLL_RATE_I));
			break;
		case PARAM_PID_ROLL_RATE_D:
			pid_set_gain_d(&_pid_roll_rate, get_param_fix16(PARAM_PID_ROLL_RATE_D));
			break;
		case PARAM_MAX_ROLL_RATE:
			pid_set_min_max(&_pid_roll_rate, -get_param_fix16(PARAM_MAX_ROLL_RATE), get_param_fix16(PARAM_MAX_ROLL_RATE));
			break;
		case PARAM_PID_PITCH_RATE_P:
			pid_set_gain_p(&_pid_pitch_rate, get_param_fix16(PARAM_PID_PITCH_RATE_P));
			break;
		case PARAM_PID_PITCH_RATE_I:
			pid_set_gain_i(&_pid_pitch_rate, get_param_fix16(PARAM_PID_PITCH_RATE_I));
			break;
		case PARAM_PID_PITCH_RATE_D:
			pid_set_gain_d(&_pid_pitch_rate, get_param_fix16(PARAM_PID_PITCH_RATE_D));
			break;
		case PARAM_MAX_PITCH_RATE:
			pid_set_min_max(&_pid_pitch_rate, -get_param_fix16(PARAM_MAX_PITCH_RATE), get_param_fix16(PARAM_MAX_PITCH_RATE));
			break;
		case PARAM_PID_YAW_RATE_P:
			pid_set_gain_p(&_pid_yaw_rate, get_param_fix16(PARAM_PID_YAW_RATE_P));
			break;
		case PARAM_PID_YAW_RATE_I:
			pid_set_gain_i(&_pid_yaw_rate, get_param_fix16(PARAM_PID_YAW_RATE_I));
			break;
		case PARAM_PID_YAW_RATE_D:
			pid_set_gain_d(&_pid_yaw_rate, get_param_fix16(PARAM_PID_YAW_RATE_D));
			break;
		case PARAM_MAX_YAW_RATE:
			pid_set_min_max(&_pid_yaw_rate, -get_param_fix16(PARAM_MAX_YAW_RATE), get_param_fix16(PARAM_MAX_YAW_RATE));
			break;
		case PARAM_MIXER:
			write_params();
			break;
		case PARAM_DEBUG_PROFILING:
			profiler_init();
			break;
		default:
			//No action needed for this param ID
			break;
	}

	lpq_queue_param_broadcast(id);
}

#ifdef __cplusplus
}
#endif