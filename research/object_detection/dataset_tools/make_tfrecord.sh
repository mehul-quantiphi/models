TRAIN_IMG_DIR="/home/mehul/PycharmProjects/medanta/office/images_filtered/train"
VALID_IMG_DIR="/home/mehul/PycharmProjects/medanta/office/images_filtered/valid"
TEST_IMG_DIR="/home/mehul/PycharmProjects/medanta/office/images_filtered/test"
TRAIN_ANNO="/home/mehul/PycharmProjects/medanta/office/split_json/train.json"
VALID_ANNO="/home/mehul/PycharmProjects/medanta/office/split_json/valid.json"
TEST_ANNO="/home/mehul/PycharmProjects/medanta/office/split_json/test.json"
OUTPUT_DIR="/home/mehul/PycharmProjects/medanta/office/tfrecord/"
INCLUDE_MASKS=True
python create_coco_tf_record.py --logtostderr \
      --train_image_dir $TRAIN_IMG_DIR \
      --val_image_dir $VALID_IMG_DIR \
      --test_image_dir $TEST_IMG_DIR \
      --train_annotations_file $TRAIN_ANNO \
      --val_annotations_file $VALID_ANNO \
      --testdev_annotations_file $TEST_ANNO \
      --output_dir $OUTPUT_DIR \
      --include_masks $INCLUDE_MASKS
