%�򵥽�����֤ ����

function [] = SVMtest7fun(data,label)

trainData = data(1:900, :);                  
testData = data(901:1280, :);                  
trainLabel = label(1:900, :);                
testLabel = label(901:1280, :);               

%���ݹ�һ��
[Train_data,PS] = mapminmax(trainData');
 Train_data = Train_data'; 
 Test_data = mapminmax('apply',testData',PS); 
 Test_data = Test_data';

% ����/ѵ��SVMģ��
model = svmtrain(trainLabel,Train_data);

% SVM�������
[predict_train_label] = svmpredict(trainLabel,Train_data,model);
[predict_test_label] = svmpredict(testLabel,Test_data,model);

% ��ӡ׼ȷ��
compare_train = (trainLabel == predict_train_label);
accuracy_train = sum(compare_train)/size(trainLabel,1)*100; 
fprintf('ѵ����׼ȷ�ʣ�%f\n',accuracy_train);
compare_test = (testLabel == predict_test_label);
accuracy_test = sum(compare_test)/size(testLabel,1)*100;
fprintf('���Լ�׼ȷ�ʣ�%f\n',accuracy_test);

% accuracy=[];
global accuracy;
accuracy1=[accuracy_train accuracy_test];
accuracy=[accuracy;accuracy1];
save(['E:\�Ե����ݼ�\SVM\','svm'],'accuracy');
end