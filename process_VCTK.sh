eval "$(conda shell.bash hook)"

INPUTDATAPATH=$1
DATASETNAME=VCTK-Corpus
OUTPUTPATH=$INPUTDATAPATH/audio_processing

conda activate tts
python compute_embeddings.py --model_path utils/encoder_models/best_model.pth.tar \
                             --config_path utils/encoder_models/config.json \
                             --output_path $OUTPUTPATH/$DATASETNAME/speakers.pth \
                             --dataset_name VCTK-Corpus \
                             --dataset_path $INPUTDATAPATH/$DATASETNAME/wav48 \
                             --no_eval TRUE
conda deactivate
