#!/bin/bash
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python -m torch.distributed.launch --nproc_per_node=8 --use_env main.py --model vim_tiny_patch16_stride8_224_bimambav2_final_pool_mean_abs_pos_embed_with_midclstok_div2 --batch-size 128 --lr 5e-6 --min-lr 1e-5 --warmup-lr 1e-5 --drop-path 0.0 --weight-decay 1e-8 --num_workers 25 --data-path  --output_dir ./output/ft_vim_tiny --epochs 30 --finetune /home/user/Vision-Mamba/ckpt/vim_tiny/vim_t_midclstok_76p1acc.pth --no_amp
