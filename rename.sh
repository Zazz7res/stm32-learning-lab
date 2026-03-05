#!/bin/bash

# 定义原始名称到新名称的映射（所有连字符已替换为下划线）
declare -A name_map

# 顶层目录
name_map["1-1 接线图"]="1_1_Wiring_Diagram"
name_map["1-2 keilkill批处理"]="1_2_keilkill_Batch"
name_map["1-3 Delay函数模块"]="1_3_Delay_Function_Module"
name_map["1-4 OLED驱动函数模块"]="1_4_OLED_Driver_Function_Module"
name_map["10-1 软件I2C读写MPU6050"]="10_1_Software_I2C_MPU6050"
name_map["10-2 硬件I2C读写MPU6050"]="10_2_Hardware_I2C_MPU6050"
name_map["11-1 软件SPI读写W25Q64"]="11_1_Software_SPI_W25Q64"
name_map["11-2 硬件SPI读写W25Q64"]="11_2_Hardware_SPI_W25Q64"
name_map["12-1 读写备份寄存器"]="12_1_Read_Write_Backup_Register"
name_map["12-2 实时时钟"]="12_2_Real_Time_Clock"
name_map["13-1 修改主频"]="13_1_Modify_Main_Frequency"
name_map["13-2 睡眠模式+串口发送+接收"]="13_2_Sleep_Mode+USART_Send+Receive"
name_map["13-3 停止模式+对射式红外传感器计次"]="13_3_Stop_Mode+Through_Beam_IR_Sensor_Counting"
name_map["13-4 待机模式+实时时钟"]="13_4_Standby_Mode+RTC"
name_map["14-1 独立看门狗"]="14_1_Independent_Watchdog"
name_map["14-2 窗口看门狗"]="14_2_Window_Watchdog"
name_map["15-1 读写内部FLASH"]="15_1_Read_Write_Internal_FLASH"
name_map["15-2 读取芯片ID"]="15_2_Read_Chip_ID"
name_map["2-1 STM32工程模板"]="2_1_STM32_Project_Template"
name_map["3-1 LED闪烁"]="3_1_LED_Blink"
name_map["3-2 LED流水灯"]="3_2_LED_Water_Light"
name_map["3-3 蜂鸣器"]="3_3_Buzzer"
name_map["3-4 按键控制LED"]="3_4_Button_Control_LED"
name_map["3-5 光敏传感器控制蜂鸣器"]="3_5_Light_Sensor_Control_Buzzer"
name_map["4-1 OLED显示屏"]="4_1_OLED_Display"
name_map["5-1 对射式红外传感器计次"]="5_1_Through_Beam_IR_Sensor_Counting"
name_map["5-2 旋转编码器计次"]="5_2_Rotary_Encoder_Counting"
name_map["6-1 定时器定时中断"]="6_1_Timer_Time_Base_Interrupt"
name_map["6-2 定时器外部时钟"]="6_2_Timer_External_Clock"
name_map["6-3 PWM驱动LED呼吸灯"]="6_3_PWM_Drive_LED_Breathing_Light"
name_map["6-4 PWM驱动舵机"]="6_4_PWM_Drive_Servo"
name_map["6-5 PWM驱动直流电机"]="6_5_PWM_Drive_DC_Motor"
name_map["6-6 输入捕获模式测频率"]="6_6_Input_Capture_Mode_Frequency_Measurement"
name_map["6-7 PWMI模式测频率占空比"]="6_7_PWMI_Mode_Frequency_Duty_Cycle_Measurement"
name_map["6-8 编码器接口测速"]="6_8_Encoder_Interface_Speed_Measurement"
name_map["7-1 AD单通道"]="7_1_AD_Single_Channel"
name_map["7-2 AD多通道"]="7_2_AD_Multi_Channel"
name_map["8-1 DMA数据转运"]="8_1_DMA_Data_Transfer"
name_map["8-2 DMA+AD多通道"]="8_2_DMA+AD_Multi_Channel"
name_map["9-1 串口发送"]="9_1_USART_Send"
name_map["9-2 串口发送+接收"]="9_2_USART_Send+Receive"
name_map["9-3 串口收发HEX数据包"]="9_3_USART_Transceive_HEX_Packet"
name_map["9-4 串口收发文本数据包"]="9_4_USART_Transceive_Text_Packet"

# 图片文件（位于 1-1 接线图 目录下）
name_map["10-1 软件I2C读写MPU6050.jpg"]="10_1_Software_I2C_MPU6050.jpg"
name_map["10-2 硬件I2C读写MPU6050.jpg"]="10_2_Hardware_I2C_MPU6050.jpg"
name_map["11-1 软件SPI读写W25Q64.jpg"]="11_1_Software_SPI_W25Q64.jpg"
name_map["11-2 硬件SPI读写W25Q64.jpg"]="11_2_Hardware_SPI_W25Q64.jpg"
name_map["12-1 读写备份寄存器.jpg"]="12_1_Read_Write_Backup_Register.jpg"
name_map["12-2 实时时钟.jpg"]="12_2_Real_Time_Clock.jpg"
name_map["13-1 修改主频.jpg"]="13_1_Modify_Main_Frequency.jpg"
name_map["13-2 睡眠模式+串口发送+接收.jpg"]="13_2_Sleep_Mode+USART_Send+Receive.jpg"
name_map["13-3 停止模式+对射式红外传感器计次.jpg"]="13_3_Stop_Mode+Through_Beam_IR_Sensor_Counting.jpg"
name_map["13-4 待机模式+实时时钟.jpg"]="13_4_Standby_Mode+RTC.jpg"
name_map["14-1 独立看门狗.jpg"]="14_1_Independent_Watchdog.jpg"
name_map["14-2 窗口看门狗.jpg"]="14_2_Window_Watchdog.jpg"
name_map["15-1 读写内部FLASH.jpg"]="15_1_Read_Write_Internal_FLASH.jpg"
name_map["15-2 读取芯片ID.jpg"]="15_2_Read_Chip_ID.jpg"
name_map["2-1 工程模板.jpg"]="2_1_Project_Template.jpg"
name_map["3-1 LED闪烁.jpg"]="3_1_LED_Blink.jpg"
name_map["3-2 LED流水灯.jpg"]="3_2_LED_Water_Light.jpg"
name_map["3-3 蜂鸣器.jpg"]="3_3_Buzzer.jpg"
name_map["3-4 按键控制LED.jpg"]="3_4_Button_Control_LED.jpg"
name_map["3-5 光敏传感器控制蜂鸣器.jpg"]="3_5_Light_Sensor_Control_Buzzer.jpg"
name_map["4-1 OLED显示屏.jpg"]="4_1_OLED_Display.jpg"
name_map["5-1 对射式红外传感器计次.jpg"]="5_1_Through_Beam_IR_Sensor_Counting.jpg"
name_map["5-2 旋转编码器计次.jpg"]="5_2_Rotary_Encoder_Counting.jpg"
name_map["6-1 定时器定时中断.jpg"]="6_1_Timer_Time_Base_Interrupt.jpg"
name_map["6-2 定时器外部时钟.jpg"]="6_2_Timer_External_Clock.jpg"
name_map["6-3 PWM驱动LED呼吸灯.jpg"]="6_3_PWM_Drive_LED_Breathing_Light.jpg"
name_map["6-4 PWM驱动舵机.jpg"]="6_4_PWM_Drive_Servo.jpg"
name_map["6-5 PWM驱动直流电机.jpg"]="6_5_PWM_Drive_DC_Motor.jpg"
name_map["6-6 输入捕获模式测频率.jpg"]="6_6_Input_Capture_Mode_Frequency_Measurement.jpg"
name_map["6-7 PWMI模式测频率占空比.jpg"]="6_7_PWMI_Mode_Frequency_Duty_Cycle_Measurement.jpg"
name_map["6-8 编码器接口测速.jpg"]="6_8_Encoder_Interface_Speed_Measurement.jpg"
name_map["7-1 AD单通道.jpg"]="7_1_AD_Single_Channel.jpg"
name_map["7-2 AD多通道.jpg"]="7_2_AD_Multi_Channel.jpg"
name_map["8-1 DMA数据转运.jpg"]="8_1_DMA_Data_Transfer.jpg"
name_map["8-2 DMA+AD多通道.jpg"]="8_2_DMA+AD_Multi_Channel.jpg"
name_map["9-1 串口发送.jpg"]="9_1_USART_Send.jpg"
name_map["9-2 串口发送+接收.jpg"]="9_2_USART_Send+Receive.jpg"
name_map["9-3 串口收发HEX数据包.jpg"]="9_3_USART_Transceive_HEX_Packet.jpg"
name_map["9-4 串口收发文本数据包.jpg"]="9_4_USART_Transceive_Text_Packet.jpg"

# 子目录（OLED驱动函数模块下）
name_map["4针脚I2C版本"]="4_pin_I2C_Version"
name_map["7针脚SPI版本"]="7_pin_SPI_Version"

# 深度优先遍历所有文件和目录
find . -depth | while IFS= read -r path; do
    # 去除开头的 "./"
    path="${path#./}"
    dir=$(dirname "$path")
    base=$(basename "$path")

    # 如果基本名称在映射中，直接使用映射值
    if [[ -n "${name_map[$base]}" ]]; then
        newbase="${name_map[$base]}"
        if [[ "$base" != "$newbase" ]]; then
            if [[ "$dir" == "." ]]; then
                newpath="$newbase"
            else
                newpath="$dir/$newbase"
            fi
            echo "mv -- \"$path\" \"$newpath\""
            mv -- "$path" "$newpath"   # 实际执行重命名
        fi
    else
        # 不在映射中：删除单引号，将连续空格替换为单个下划线
        newbase="$base"
        newbase="${newbase//\'/}"                     # 删除单引号
        newbase=$(echo "$newbase" | sed 's/  */_/g')  # 连续空格 -> 下划线
        if [[ "$newbase" != "$base" ]]; then
            if [[ "$dir" == "." ]]; then
                newpath="$newbase"
            else
                newpath="$dir/$newbase"
            fi
            echo "mv -- \"$path\" \"$newpath\""
            mv -- "$path" "$newpath"   # 实际执行重命名
        fi
    fi
done
