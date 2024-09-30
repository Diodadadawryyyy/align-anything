from datasets import load_dataset

# 加载数据集
dataset = load_dataset("PKU-Alignment/Align-Anything",'text-image-to-text')

# 查看数据集的基本信息
#print(dataset)

# 查看训练集的一个示例
#sample = dataset['train'][0]
#print(sample)

# 分析数据集中的字段
#for key, value in sample.items():
#    print(f"{key}: {value}")

# 统计数据集中的样本数量
#train_size = len(dataset['train'])
#validation_size = len(dataset['validation'])
#test_size = len(dataset['test'])

#print(f"训练集大小: {train_size}")
#print(f"验证集大小: {validation_size}")
#print(f"测试集大小: {test_size}")

# 示例分析：统计每个字段的类型和示例
#for split in dataset.keys():
#    print(f"\n{split} 集的数据分析:")
#    for key, value in dataset[split][0].items():
#        print(f"{key}: 类型 {type(value)}, 示例 {value}")

