T5X_DIR=${HOME}"/t5x"  # directory where the t5x is cloned, e.g., ${HOME}"/t5x".
TFDS_DATA_DIR=$1"/data/"
MODEL_DIR=$1"/model/"

PROJECT_DIR=${HOME}"/multilingual-t0/multilingual_t0"
export PYTHONPATH=${PROJECT_DIR}

python3 ${T5X_DIR}/t5x/train.py \
  --tfds_data_dir=${TFDS_DATA_DIR} \
  --gin_file="mt0_xxl_finetune.gin" \
  --gin.TRAIN_STEPS=1000005 \
  --gin.MODEL_DIR="'${MODEL_DIR}'" \
  --gin.MIXTURE_OR_TASK_NAME="'winogrande_winogrande_xl_underscore_refer_to'" \
