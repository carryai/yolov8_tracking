### Source
This repo is originally forked from [link](https://github.com/mikel-brostrom/yolov8_tracking) (commit 2a59651).

### Download ReID model
ReID is not included in the repo and you need to download from the ReID model zoo (check the original README). You can directly download the mobilenetv2_x1_4 model from [here](https://drive.google.com/file/d/10c0ToIGIVI0QZTx284nJe8QfSJl5bIta/view). You need to put the downloaded model under `examples/weights/` and rename it as `mobilenetv2_x1_4_dukemtmcreid.pt`.

### Changes in code
Comment the following:

```python
predictor.args.imgsz = check_imgsz(predictor.args.imgsz, stride=model.model.stride, min_dim=2)
```

at `examples/track.py`, which disables the checking of image size and does not affect the other functions.

Used `cv2.CAP_GSTREAMER` 

### Example command that works
Use the following command in terminal to run tracking for local video:

```
python3 examples/track.py --source ~/test_videos/palace_original.mp4 --yolo-model ~/test/yolov8n.engine --tracking-method bytetrack --save --device 0
```

or the following for USB camera:

```
python3 examples/track.py --yolo-model ~/test/yolov8n.engine --tracking-method bytetrack --device 0 --show
```

Ensure that the paths for source video and yolo model work for you.