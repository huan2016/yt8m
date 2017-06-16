MODEL_DIR=/DATACENTER/1/forwchen/yt8m

CUDA_VISIBLE_DEVICES=1 python train.py \
    --train_data_pattern='whatever*.tfrecord' \
    --model=DbofModel \
    --train_dir=$MODEL_DIR/frame_level_dbof_model \
    --frame_features=True --feature_names="rgb,audio" --feature_sizes="1024,128" \
    --batch_size=512 \
    --num_epochs=500 \
    --base_learning_rate=0.005 \
    --learning_rate_decay_examples=6000000 \
    --clip_gradient_norm=1.0 \
    --regularization_penalty=1.0 \

