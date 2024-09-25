LANG=en
TRAIN_COUNT=1000000
VAL_COUNT=5000
MAX_LEN=3
MIN_RES=32
MAX_RES=64
NUM_THREADS=64
FMT=jpg
MAX_SKEW=15
MAX_BLUR=3
BG_TYPE=0  # gaussian noise
NAME_FMT=2  # [ID].[EXT] + one file labels.txt containing id-to-label mappings
DISTORT_TYPE=4  # random distortion
DISTORT_ORIENT=2  # random orientation
ORIENT=2  # random orientation
TEXT_COLOR='#000000,#888888'  # random color from 000000 to 888888
MIN_SPACE_WIDTH=1.0
MAX_SPACE_WIDTH=3.0
MIN_CHAR_SPACE=-1
MAX_CHAR_SPACE=16
FONT_DIR=trdg/fonts/latin
TRAIN_OUT_DIR=/data/ocr/recog/esnsyn/imgs/train
VAL_OUT_DIR=/data/ocr/recog/esnsyn/imgs/val

trdg -l $LANG -c $TRAIN_COUNT -rs -ud -w $MAX_LEN -r -f $MIN_RES $MAX_RES -t $NUM_THREADS -e $FMT -k $MAX_SKEW -rk -bl $MAX_BLUR -rbl -b $BG_TYPE -na $NAME_FMT -d $DISTORT_TYPE -do $DISTORT_ORIENT -or $ORIENT -tc $TEXT_COLOR -cs $MIN_CHAR_SPACE $MAX_CHAR_SPACE -sw $MIN_SPACE_WIDTH $MAX_SPACE_WIDTH -fd $FONT_DIR --output_dir $TRAIN_OUT_DIR

trdg -l $LANG -c $VAL_COUNT -rs -ud -w $MAX_LEN -r -f $MIN_RES $MAX_RES -t $NUM_THREADS -e $FMT -k $MAX_SKEW -rk -bl $MAX_BLUR -rbl -b $BG_TYPE -na $NAME_FMT -d $DISTORT_TYPE -do $DISTORT_ORIENT -or $ORIENT -tc $TEXT_COLOR -cs $MIN_CHAR_SPACE $MAX_CHAR_SPACE -sw $MIN_SPACE_WIDTH $MAX_SPACE_WIDTH -fd $FONT_DIR --output_dir $VAL_OUT_DIR