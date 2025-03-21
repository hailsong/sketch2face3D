cuda_num=0

cd pix2pix3D

model_name="sketch2mask_cat_distill"
CUDA_VISIBLE_DEVICES="${cuda_num}" python applications/generate_multiple_video.py \
                            --network checkpoints/pix2pix3d_seg2cat.pkl \
                            --outdir ../sketch2mask/results/${model_name}/inference/pix2pix3d/ \
                            --input_dir ../sketch2mask/results/${model_name}/inference/pred_mask/ \
                            --cfg seg2cat \
