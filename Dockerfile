# 使用 Node 14 镜像作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 将项目文件复制到工作目录
COPY . .

# 安装依赖
RUN npm install

# 构建生产环境代码
RUN npm run build

# 暴露容器的端口
EXPOSE 80

# 启动应用
CMD ["npm", "run", "start"]