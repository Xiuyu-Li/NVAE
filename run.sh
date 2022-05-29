export EXPR_ID=$1
export DATA_DIR=data
export CHECKPOINT_DIR=training-runs
python train.py --data $DATA_DIR/artcifar10 --root $CHECKPOINT_DIR --save $EXPR_ID --dataset artcifar10 \
        --num_channels_enc 128 --num_channels_dec 128 --epochs 400 --num_postprocess_cells 2 --num_preprocess_cells 2 \
        --num_latent_scales 1 --num_latent_per_group 20 --num_cell_per_cond_enc 2 --num_cell_per_cond_dec 2 \
        --num_preprocess_blocks 1 --num_postprocess_blocks 1 --num_groups_per_scale 30 --batch_size 32 \
        --weight_decay_norm 1e-2 --num_nf 1 --num_process_per_node 8 --use_se --res_dist --fast_adamax 