cd pix2pix3D

NCCL_P2P_DISABLE=1 python train.py --outdir=logs \
                --cfg=celeba --seg_weight=2 --data=../data/CelebAMask-HQ.zip \
                --mask_data=../data/kernel_size5_dilation_iterations3.zip \
                --data_resolution=512 \
                --render_mask=True --dis_mask=True \
                --neural_rendering_resolution_initial=128 \
                --gpus=1 --batch=8 --mbstd-group=1 \
                --gamma=1 --gen_pose_cond=True \
                --resume=ckpts/ffhqrebalanced512-128.pkl \
                --random_c_prob=0.5 \
                --only_raw_recons=True \
                --lambda_cross_view=1e-4 \
                --lambda_d_semantic=0.1 \
                --lambda_lpips=1 \
                --wandb_log=False
