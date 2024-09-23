trdg -l ja -c 5000000 -w 1 -f 24 64 -t 32 -e png -k 15 -rk -bl 1 -rbl -b 0 -na 2 -d 4 -do 2 -or 2 -tc '#000000,#888888' -cs -4 16 -fd trdg/fonts/ja --output_dir /data/ocr/recog/jpsyn/imgs/train
trdg -l ja -c 5000 -w 1 -f 24 64 -t 32 -e png -k 15 -rk -bl 1 -rbl -b 0 -na 2 -d 4 -do 2 -or 2 -tc '#000000,#888888' -cs -4 16 -fd trdg/fonts/ja --output_dir /data/ocr/recog/jpsyn/imgs/val
