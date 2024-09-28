#!/usr/bin/env bash
#
# Copyright 2024 PKU-Alignment Team. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

# You can replace it with a local model path
MODEL_NAME_OR_PATH="llava-hf/llava-1.5-7b-hf"
# You can replace it with a local dataset path
TRAIN_DATASETS="sqrti/SPA-VL"
# You can replace it with a local dataset path
EVAL_DATASETS="sqrti/SPA-VL"
# You can replace it with a new path with correct permission
OUTPUT_DIR="../output/rm_example"
# For wandb online logging
export WANDB_API_KEY=""
# Source the setup script
source ./setup.sh

# Execute deepspeed command
deepspeed \
	--master_port ${MASTER_PORT} \
	--module align_anything.trainers.text_image_to_text.rm \
	--model_name_or_path ${MODEL_NAME_OR_PATH} \
	--train_datasets ${TRAIN_DATASETS} \
	--eval_datasets ${EVAL_DATASETS} \
	--output_dir ${OUTPUT_DIR} \
  	--train_split train \
	--eval_split train \
	--train_template SPA_VL \
	--eval_template SPA_VL
