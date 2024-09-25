CORPUS=trdg/dicts/corpus_en_jp.txt
TRAIN_COUNT=5000000
VAL_COUNT=5000
MAX_LEN=3
MIN_RES=32
MAX_RES=64
NUM_THREADS=64
FMT=jpg
MAX_SKEW=15
MAX_BLUR=4
BG_TYPE=0  # gaussian noise
NAME_FMT=2  # [ID].[EXT] + one file labels.txt containing id-to-label mappings
DISTORT_TYPE=4  # random distortion
DISTORT_ORIENT=2  # random orientation
ORIENT=2  # random orientation
TEXT_COLOR='#000000,#888888'  # random color from 000000 to 888888
MIN_CHAR_SPACE=-4
MAX_CHAR_SPACE=16
FONT_DIR=trdg/fonts/latin
TRAIN_OUT_DIR=/data/ocr/recog/ensyn2/imgs/train
VAL_OUT_DIR=/data/ocr/recog/ensyn2/imgs/val

trdg -dt $CORPUS -c $TRAIN_COUNT -w $MAX_LEN -f $MIN_RES $MAX_RES -t $NUM_THREADS -e $FMT -k $MAX_SKEW -rk -bl $MAX_BLUR -rbl -b $BG_TYPE -na $NAME_FMT -d $DISTORT_TYPE -do $DISTORT_ORIENT -or $ORIENT -tc $TEXT_COLOR -cs $MIN_CHAR_SPACE $MAX_CHAR_SPACE -fd $FONT_DIR --output_dir $TRAIN_OUT_DIR
trdg -dt $CORPUS -c $VAL_COUNT -w $MAX_LEN -f $MIN_RES $MAX_RES -t $NUM_THREADS -e $FMT -k $MAX_SKEW -rk -bl $MAX_BLUR -rbl -b $BG_TYPE -na $NAME_FMT -d $DISTORT_TYPE -do $DISTORT_ORIENT -or $ORIENT -tc $TEXT_COLOR -cs $MIN_CHAR_SPACE $MAX_CHAR_SPACE -fd $FONT_DIR --output_dir $VAL_OUT_DIR
