#!/bin/sh
set -eux
exec koboldcpp \
  --usecublas \
  --host 0.0.0.0 \
  --port 8080 \
  --threads ${THREADS:-16} \
  --model ${MODEL:-/models/model.bin} \
  --contextsize ${CONTEXTSIZE:-4096} \
  --gpulayers ${GPULAYERS:-20}
