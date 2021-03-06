# # Make dir
# mkdir data/
# mkdir data/images

# Prepare COCO 2014 train data
wget http://images.cocodataset.org/zips/train2014.zip -P data/
unzip data/train2014.zip -d data/
rm data/train2014.zip

# Annotations
wget http://images.cocodataset.org/annotations/annotations_trainval2014.zip -P data/
unzip data/annotations_trainval2014.zip -d data/
rm data/annotations_trainval2014.zip

# # RefCOCO original
# wget https://bvisionweb1.cs.unc.edu/licheng/referit/data/refcoco.zip -P data/
# unzip data/refcoco.zip -d data/
# rm data/refcoco.zip

# # MDETR cleaned annotations
# wget https://zenodo.org/record/4729015/files/mdetr_annotations.tar.gz -P data/
# tar -xf mdetr_annotations.tar.gz
# rm mdetr_annotations.tar.gz

# # Final annotations + embeddings + checkpoint
gdown https://drive.google.com/drive/folders/1zAz7pHj5xtyojsvyUj9HKKgEZ-7_Km1M -O data/ --folder
mv data/VLR\ Project/ data/
rm data/VLR\ Project/ -r

# DETR
wget https://dl.fbaipublicfiles.com/detr/detr-r50-e632da11.pth -P data/