
torchrun --nnodes=1 --nproc_per_node 8  --master_port 29503 \
    -m opensora.sample.sample_inpaint_sp \
    --model_path /storage/gyy/hw/Open-Sora-Plan/runs/inpaint_only_480p_f93_bs4x8x1_lr1e-5_snrgamma5_0_noiseoffset0_02_ema0_999/checkpoint-35000/model \
    --num_frames 93 \
    --height 480 \
    --width 640 \
    --cache_dir "../cache_dir" \
    --text_encoder_name google/mt5-xxl \
    --text_prompt /storage/gyy/hw/Open-Sora-Plan/md_validation/prompt.txt \
    --ae CausalVAEModel_D4_4x8x8 \
    --ae_path "/storage/dataset/test140k" \
    --save_img_path "./sample_video_test" \
    --fps 24 \
    --guidance_scale 7.5 \
    --num_sampling_steps 100 \
    --enable_tiling \
    --tile_overlap_factor 0.125 \
    --max_sequence_length 512 \
    --sample_method PNDM \
    --validation_dir /storage/gyy/hw/Open-Sora-Plan/md_validation \