import wandb
import gym
import d4rl

for env in ['halfcheetah']:
    for dset in ['medium', 'medium-expert']:
        dset_name = env+'_'+dset.replace('-', '_')+'-v2'
        env_name = dset_name.replace('_', '-')
        gym_env = gym.make(env_name)
        dataset = gym_env.get_dataset()