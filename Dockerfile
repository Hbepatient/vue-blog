# 使用 Node 14 镜像作为基础镜像
FROM node:18 as builder

# 设置工作目录
WORKDIR /app

# 将项目文件复制到工作目录
COPY . .

# 安装依赖
RUN npm install

# 构建生产环境代码
RUN npm run build

# 使用 Nginx 镜像作为最终镜像
FROM nginx:alpine

# 将构建好的文件复制到 Nginx 的默认目录
COPY --from=builder /app/dist /usr/share/nginx/html

# 暴露容器的端口
EXPOSE 80

# Nginx 启动命令
CMD ["nginx", "-g", "daemon off;"]
