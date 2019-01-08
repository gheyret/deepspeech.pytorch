train=data/manifests/en/train/ted_train_manifest.csv
#train=data/manifests/en/merged_train_manifest.csv
val=data/manifests/en/val/ted_val_manifest.csv
#val=data/manifests/en/merged_val_manifest.csv
m=data/models/en/tdnn-ted1.pth
mf=data/models/en/tdnn-ted1
lr=0.0003
cpb=2000
CUDA_VISIBLE_DEVICES=0 .venv/bin/python train.py --train-manifest $train --val-manifest $val --batch-size 16 --cuda --augment --save-folder $mf --epochs 40 --checkpoint --model-path $m --learning-rate $lr --checkpoint-per-batch $cpb "$@"