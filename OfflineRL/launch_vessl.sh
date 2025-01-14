#!/bin/bash
# dataset=walker2d-random
num_model=100
# num_traj_infer=100
cal=True
# r_scale=10
belief_mode=bay
# seed=42
horizon_step=10

python examples/train_d4rl.py --algo_name=pessi_bayrl_v2 \
                              --exp_name=pessi-$lambda-minus_value-$minus_value \
                              --task=d4rl-$dataset-v2 \
                              --transition_init_num=110 \
                              --transition_select_num=$num_model \
                              --dynamics_path=/model/$dataset-$num_model-seed-$seed.th \
                              --save_path=/output/$dataset-$seed-ckpt.th \
                              --traj_num_to_infer=$num_traj_infer \
                              --belief_update_mode=$belief_mode \
                              --value_bias=$minus_value \
                              --horizon=$horizon_step \
                              --q_lambda=$lambda \
                              --calibration=$cal \
                              --seed=$seed