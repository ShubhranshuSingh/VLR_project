wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod u+x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh

source ~/.bashrc

conda activate base
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
conda install pandas scikit-learn jupyterlab matplotlib tqdm seaborn cython tensorboard
conda install -c huggingface transformers
pip install "git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI&egg=pycocotools"
conda clean -a

# sudo mkfs -t xfs /dev/nvme1n1
# sudo mkdir ~/data && sudo mount /dev/nvme1n1 ~/data
# (cd ~/data && sudo chmod go+rw .)
# Use Ephemeral storage

