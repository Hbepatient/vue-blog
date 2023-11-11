<script setup lang="ts">
import router from '@/router';
import {
    User,
    Clock,
    ChatSquare
} from '@element-plus/icons-vue'
import moment from 'moment'

const jump = () => {
    router.push({
        path: '/detail'
    })
}
</script>

<template>
    <template v-for="n in 10">
        <div class="article-card">
            <h3 class="article-title" @click="jump">SSH公钥登录和RSA非对称加密</h3>
            <div class="article-intro">
                SSH登录方式接触过Linux服务器的同学肯定用过SSH协议登录系统，通常SSH协议都有两种登录方式：密码口令登录和公钥登陆。一、密码口令（类似于账号密码登录） 1.客户端连接服务器，服务器把公钥发给客户端
                2.客户端输入登录口令，并用服务器公钥加密后提交给服务器 3.服务器用私钥解密，结果匹配，则允许登录 二、公钥登录（一般用RSA非对称加密） 1...
            </div>
            <div class="article-info">
                <span class="info-item">
                    <el-icon>
                        <User />
                    </el-icon>
                    <span class="info-item-text">洪涛</span>
                </span>
                <span class="info-item">
                    <el-icon>
                        <Clock />
                    </el-icon>
                    <span class="info-item-text">{{ moment().format('YYYY-MM-DD') }}</span>
                </span>
                <span class="info-item">
                    <el-icon>
                        <ChatSquare />
                    </el-icon>
                    <span class="info-item-text">13条评论</span>
                </span>
            </div>
        </div>
        <el-divider />
    </template>
</template>

<style scoped>
.article-card {
    margin: 16px 32px;
    padding: 25px;
    background-color: #fff;
    box-shadow: 0px 0px 4px 3px rgba(0, 0, 0, 0.2);
    border-radius: 5px;
}

.article-title {
    font-size: 22px;
    padding: 10px 0;
}

.article-title:hover{
    cursor: pointer;
    color: #3A70DD;
}

.article-intro {
    padding-bottom: 20px;
    color: #a0a0a0;
    line-height: 2;
}

.article-info {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 300px;
}

.info-item {
    display: flex;
    align-items: center;
    font-size: 14px;
    color: #a0a0a0;
}

.info-item-text {
    padding-left: 10px;
}
</style>
