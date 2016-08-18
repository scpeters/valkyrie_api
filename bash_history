sh run_sim_val_harnessed.sh &
sh run_controller.sh &
sh run_ros_api.sh &
rosservice call /controller_manager/list_controllers
rostopic list
for t in `rostopic list`; do echo $t; rostopic info $t; echo; done
