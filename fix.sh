#! /bin/sh
echo "gainRNase,lossRNase,gainSLF,lossSLF,K,N,FB,num_hap,cross_grains,self_grains" > fixCount.csv
for i in 1 2 3 4 5 6 7 8 9 10
do
        slim -d K=100 -d N=500 -d FB=10 -d num_hap=5 -d cross_grains=1 -d self_grains=1 fixation.slim
        slim -d K=100 -d N=500 -d FB=10 -d num_hap=5 -d cross_grains=2 -d self_grains=1 fixation.slim
done