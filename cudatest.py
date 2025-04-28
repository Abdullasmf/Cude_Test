# this script is used to test if cuda can be loaded
# and if the GPU is available

import torch
import os
import sys

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"Using device: {device}")