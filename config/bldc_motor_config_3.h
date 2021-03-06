/**
 * @file bldc_motor_config_3.h
 * @brief Motor Control config file for motor 3: maxon_456688 (Please define your the motor specifications here)
 * @author Synapticon GmbH (www.synapticon.com)
 */

#ifndef _MOTOR_3
#define _MOTOR_3
#include <common_config.h>

/**
 * Define Motor Specific Constants (found in motor specification sheet)
 * Mandatory constants to be set
 */
#define POLE_PAIRS_3                    7       // Number of pole pairs
#define MAX_NOMINAL_SPEED_3             3740    // rpm
#define MAX_NOMINAL_CURRENT_3           5       // A
#define MOTOR_TORQUE_CONSTANT_3         53      // mNm/A

/**
 * If you have any gears added, specify gear-ratio
 * and any additional encoders attached specify encoder resolution here (Mandatory)
 */
#define GEAR_RATIO_3                    4       // if no gears are attached - set to gear ratio to 1
#define ENCODER_RESOLUTION_3            16384   // 4 x Max count of Incremental Encoder (4X decoding - quadrature mode)

/* Somanet IFM Internal Configuration:  Specifies the current sensor resolution per Ampere
 *  (DC300_RESOLUTION / DC100_RESOLUTION / OLD_DC300_RESOLUTION) */
#define IFM_RESOLUTION_3                DC100_RESOLUTION

/* Position Sensor Types (select your sensor type here)
 * (HALL/ QEI_INDEX/ QEI_NO_INDEX) */
#define SENSOR_SELECTION_CODE_3         QEI_NO_INDEX

/* Polarity is used to keep all position sensors to count ticks in the same direction
 *  (QEI_POLARITY_NORMAL/QEI_POLARITY_INVERTED) */
#define QEI_SENSOR_POLARITY_3           QEI_POLARITY_INVERTED

/* Commutation offset (range 0-4095) (HALL sensor based commutation) */
#define COMMUTATION_OFFSET_CLK_3        683
#define COMMUTATION_OFFSET_CCLK_3       2731

/* Motor Winding type (STAR_WINDING/DELTA_WINDING) */
#define WINDING_TYPE_3                  STAR_WINDING

/* Specify Switch Types (ACTIVE_HIGH/ACTIVE_LOW) when switch is closed
 * (Only if you have any limit switches in the system for safety/homing ) */
#define LIMIT_SWITCH_TYPES_3            ACTIVE_HIGH

/* Define Homing method (HOMING_POSITIVE_SWITCH/HOMING_NEGATIVE_SWITCH)
 * this specifies direction for the motor to find the home switch */
#define HOMING_METHOD_3                 HOMING_NEGATIVE_SWITCH

/* Changes direction of the motor drive  (1 /-1) */
#define POLARITY_3                      1

/* Profile defines (Mandatory for profile modes) */
#define MAX_PROFILE_VELOCITY_3          MAX_NOMINAL_SPEED_3
#define PROFILE_VELOCITY_3              1000    // rpm
#define MAX_ACCELERATION_3              5000    // rpm/s
#define PROFILE_ACCELERATION_3          2000    // rpm/s
#define PROFILE_DECELERATION_3          2000    // rpm/s
#define QUICK_STOP_DECELERATION_3       1000    // rpm/s
#define MAX_TORQUE_3                    MOTOR_TORQUE_CONSTANT_3 * IFM_RESOLUTION_3 * MAX_NOMINAL_CURRENT_3 // calculated
#define TORQUE_SLOPE_3                  66      // mNm/s


/* Control specific constants/variables */
    /* Torque Control (Mandatory if Torque control used)
     * possible range of gains Kp/Ki/Kd: 1/65536 to 32760
     * Note: gains are calculated as NUMERATOR/DENOMINATOR to give ranges */
#define TORQUE_Kp_NUMERATOR_3         8
#define TORQUE_Kp_DENOMINATOR_3       20
#define TORQUE_Ki_NUMERATOR_3         1
#define TORQUE_Ki_DENOMINATOR_3       110
#define TORQUE_Kd_NUMERATOR_3         0
#define TORQUE_Kd_DENOMINATOR_3       10

    /* Velocity Control (Mandatory if Velocity control used)
     * possible range of gains Kp/Ki/Kd: 1/65536 to 32760
     * Note: gains are calculated as NUMERATOR/DENOMINATOR to give ranges */
#define VELOCITY_Kp_NUMERATOR_3       1
#define VELOCITY_Kp_DENOMINATOR_3     20
#define VELOCITY_Ki_NUMERATOR_3       1
#define VELOCITY_Ki_DENOMINATOR_3     300
#define VELOCITY_Kd_NUMERATOR_3       0
#define VELOCITY_Kd_DENOMINATOR_3     1

    /* Position Control (Mandatory if Position control used)
     * possible range of gains Kp/Ki/Kd: 1/65536 to 32760
     * Note: gains are calculated as NUMERATOR/DENOMINATOR to give ranges */
#if(SENSOR_SELECTION_CODE_3 == QEI_INDEX || SENSOR_SELECTION_CODE_3 == QEI_NO_INDEX) // PID gains for position control with Incremental Encoder
    #define POSITION_Kp_NUMERATOR_3         160
    #define POSITION_Kp_DENOMINATOR_3       1000
    #define POSITION_Ki_NUMERATOR_3         1
    #define POSITION_Ki_DENOMINATOR_3       10000
    #define POSITION_Kd_NUMERATOR_3         1
    #define POSITION_Kd_DENOMINATOR_3       1000
    #define MAX_POSITION_LIMIT_3            GEAR_RATIO_3*ENCODER_RESOLUTION_3 * 100    // ticks (max range: 2^30, limited for safe operation)
    #define MIN_POSITION_LIMIT_3            -GEAR_RATIO_3*ENCODER_RESOLUTION_3 * 100     // ticks (min range: -2^30, limited for safe operation)
#endif
#if(SENSOR_SELECTION_CODE_3 == HALL)        // PID gains for position control with Hall Sensor
    #define POSITION_Kp_NUMERATOR_3         100
    #define POSITION_Kp_DENOMINATOR_3       1000
    #define POSITION_Ki_NUMERATOR_3         1
    #define POSITION_Ki_DENOMINATOR_3       1200
    #define POSITION_Kd_NUMERATOR_3         0
    #define POSITION_Kd_DENOMINATOR_3       1000
    #define MAX_POSITION_LIMIT_3            POLE_PAIRS_3*HALL_POSITION_INTERPOLATED_RANGE*GEAR_RATIO_3 * 10     // ticks (max range: 2^30, limited for safe operation) qei/hall/any position sensor
    #define MIN_POSITION_LIMIT_3            -POLE_PAIRS_3*HALL_POSITION_INTERPOLATED_RANGE*GEAR_RATIO_3 * 10    // ticks (min range: -2^30, limited for safe operation) qei/hall/any position sensor
#endif

#endif

