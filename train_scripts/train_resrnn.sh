MODEL_DIR=/DATACENTER/1/yt8m/models

CUDA_VISIBLE_DEVICES=0,1 python train.py \
    --train_data_pattern='whatever*.tfrecord' \
    --train_list='train_val.lst' \
    --use_grad_agg=False \
    --model=ResRnnModel \
    --lstm_cells=1152 \
    --train_dir=$MODEL_DIR/frame_level_resrnn_model \
    --frame_features=True --feature_names="rgb,audio" --feature_sizes="1024,128" \
    --batch_size=256 \
    --num_epochs=500 \
    --base_learning_rate=0.001 \
    --learning_rate_decay_examples=6000000 \
    --clip_gradient_norm=1.0 \
    --regularization_penalty=1.0 \

