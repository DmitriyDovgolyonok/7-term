webtalk_init -webtalk_dir D:/APVMIS2Lab/lab2.sim/sim_1/behav/xsim/xsim.dir/lab2_tb_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Wed Oct 26 11:15:27 2022" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2018.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2258646" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "WIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "ee106bb4-c34b-449e-b903-5231751889b2" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "1cd7745332074f62a5d77b214de310a1" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "98" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Microsoft Windows 7 , 64-bit" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Service Pack 1  (build 7601)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3000 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "8.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "1 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "10" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.08_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "6164_KB" -context "xsim\\usage"
webtalk_transmit -clientid 1189501748 -regid "" -xml D:/APVMIS2Lab/lab2.sim/sim_1/behav/xsim/xsim.dir/lab2_tb_behav/webtalk/usage_statistics_ext_xsim.xml -html D:/APVMIS2Lab/lab2.sim/sim_1/behav/xsim/xsim.dir/lab2_tb_behav/webtalk/usage_statistics_ext_xsim.html -wdm D:/APVMIS2Lab/lab2.sim/sim_1/behav/xsim/xsim.dir/lab2_tb_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
