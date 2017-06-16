MODEL_DIR=/DATACENTER/1/yt8m/models

CUDA_VISIBLE_DEVICES=0,1 python train.py \
    --train_data_pattern='whatever*.tfrecord' \
    --train_list='train_val.lst' \
    --use_grad_agg=True \
    --model=RwaModel \
    --lstm_cells=3072 \
    --train_dir=$MODEL_DIR/frame_level_rwa_model_1 \
    --frame_features=True --feature_names="rgb,audio" --feature_sizes="1024,128" \
    --batch_size=128 \
    --num_epochs=500 \
    --base_learning_rate=0.001 \
    --learning_rate_decay_examples=6000000 \
    --clip_gradient_norm=1.0 \
    --regularization_penalty=1.0 \

