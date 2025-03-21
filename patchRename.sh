#!/bin/bash

# 指定要处理的文件夹路径
target_dir="/Users/mac/Desktop/Touch"

# 查找所有文件并处理文件名
find "$target_dir" -type f -name '*【耗时整理‖免费分享 cunlove.cn】*' | while read -r file; do
    # 获取文件所在目录和文件名
    dir=$(dirname "$file")
    filename=$(basename "$file")
    
    # 去掉文件名中的指定部分
    new_filename=$(echo "$filename" | sed 's/【耗时整理‖免费分享 cunlove.cn】//g')
    
    # 重命名文件
    mv "$file" "$dir/$new_filename"
done

echo "文件名处理完成！"

