conda create -n also python=3.8 -y
conda activate also
conda install pytorch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1 cudatoolkit=11.3 -c pytorch -y
conda install pyyaml omegaconf -y
conda install pytorch-cluster  pytorch-scatter pytorch-sparse -c pyg -y

pip install torch-geometric
pip install pytorch-lightning==1.7.2
pip install hydra-core
pip install rootpath

# python -c "$(curl -fsSL https://raw.githubusercontent.com/mit-han-lab/torchsparse/master/install.py)"
MAX_JOBS=8 pip install --upgrade git+https://github.com/mit-han-lab/torchsparse.git@v1.4.0

pip install spconv-cu113

# install openpcdet from source, see https://github.com/open-mmlab/OpenPCDet/blob/master/docs/INSTALL.md
# ~$ git clone https://github.com/open-mmlab/OpenPCDet.git
# ~$ python setup.py develop

pip install nuscenes-devkit

pip install -ve .