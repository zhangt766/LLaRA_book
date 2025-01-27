CUDA_VISIBLE_DEVICES=0 python3 main.py \
--mode test \
--batch_size 4 \
--accumulate_grad_batches 32 \
--dataset movielens_data \
--data_dir data/ref/lastfm \
--cans_num 20 \
--prompt_path ./prompt/artist.txt \
--rec_embed SASRec \
--llm_tuning lora \
--llm_path /workspace/LLaRA/output/lastfm_unsloth \
--rec_model_path ./rec_model/movielens.pt \
--output_dir /workspace/LLaRA \
--log_dir lastfm_logs \
--lr_warmup_start_lr 2e-6 \
--lr 2e-4 \
--lr_decay_min_lr 2e-6 \
--max_epochs 5 \
--unsloth 1
