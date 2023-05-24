export LD_PRELOAD=/usr/lib/aarch64-linux-gnu/libGLdispatch.so.0

python3 track.py --yolo-model yolov8n.engine  --tracking-method bytetrack --reid-model mobilenetv2_x1_4_msmt17.engine --vid-stride 5 --half