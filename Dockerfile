# 指定构建的基础镜像，版本根据项目需要更换
FROM node:16.18.0 AS builder

# 安装 Git
RUN apk add --no-cache git

# 从 Git 拉取前端代码
RUN git clone https://github.com/Hbepatient/vue-blog.git /blog-app && \
    cd /blog-app

# 安装依赖并编译前端代码
RUN npm install --legacy-peer-deps --registry=https://registry.npm.taobao.org && \
    npm run build

# 构建 Nginx 镜像，版本根据项目需要更换
FROM nginx:1.21.3-alpine

# 复制编译后的前端代码到 Nginx 静态资源目录
COPY --from=builder /blog-app/dist /usr/share/nginx/html

# 复制自定义的 Nginx 配置文件
COPY default.conf /etc/nginx/default.conf

# 暴露端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]