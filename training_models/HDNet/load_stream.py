import torch
import torchvision
import torch.nn as nn

class TwoStreamCNN(nn.Module):
    def __init__(self, num_classes):
        """
        In the constructor we instantiate two nn.Linear modules and assign them as
        member variables.
        """
        super(TwoStreamCNN, self).__init__()
        resnet_base = torchvision.models.resnet18(pretrained=True)
        num_final_in = resnet_base.fc.in_features
        resnet_base.fc = nn.Linear(num_final_in, 1000)
        
        self.base = resnet_base
        self.linear_flattener = torch.nn.Linear(2000, num_classes)
        self.ReLU_1 = nn.ReLU()
        self.ReLU_2 = nn.ReLU()
        

    def forward(self, target, context):
        """
        In the forward function we accept a Tensor of input data and we must return
        a Tensor of output data. We can use Modules defined in the constructor as
        well as arbitrary operators on Tensors.
        """
        x_1 = self.ReLU_1(self.base(target))
        x_2 = self.ReLU_2(self.base(context))
        # print(x_1.shape)
        # print(x_2.shape)
        concatted_feats = torch.hstack((x_1,x_2))
        # print(concatted_feats.shape)
        y_pred = self.linear_flattener(concatted_feats)
        return y_pred

model_path = 'v3_output/4_style_hotswapped_material_50_two_stream_cnn/checkpoint_19.tar'
checkpoint = torch.load(model_path, map_location="cpu")
model = TwoStreamCNN(13)
missing_keys, unexpected_keys = model.load_state_dict(checkpoint['model_state_dict'], strict=False)
print(unexpected_keys)