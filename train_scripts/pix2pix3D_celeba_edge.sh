cd pix2pix3D

NCCL_P2P_DISABLE=1 python train.py --outdir=../logs \
                --cfg=celeba --data=../data/celebamask_train.zip \
                --mask_data=../data/celebamask_train_sketch.zip \
                --data_type=edge \
                --data_resolution=512 \
                --render_mask=True --dis_mask=True \
                --resume=../ckpts/ffhqrebalanced512-128.pkl \
                --gpus=1 --batch=1 --mbstd-group=1 \
                --gamma=0.3 --gen_pose_cond=True \
                --random_c_prob=0.5 \
                --lambda_cross_view=1e-4 \
                --lambda_d_semantic=0.1 \
                --lambda_lpips=1 \
                --edge_weight=10 --geometry_layer=9 \
                --wandb_log=False \
                --kimg=40 \
