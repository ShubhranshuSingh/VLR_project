mkdir data/
mkdir data/images

wget http://images.cocodataset.org/zips/train2014.zip -P data/images/
rm data/images/train2014.zip

unzip data/images/train2014.zip -d data/images/

wget https://bvisionweb1.cs.unc.edu/licheng/referit/data/refcoco.zip -P data/

unzip data/refcoco.zip -d data/
rm data/refcoco.zip