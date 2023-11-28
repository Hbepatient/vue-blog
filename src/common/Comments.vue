<script setup lang="ts">
import { UserFilled, Picture, Star } from '@element-plus/icons-vue'
import moment from 'moment';
import { ref } from 'vue';

const inpuRef = ref('')
</script>

<template>
    <div class="comments-wrapper">
        <h3 class="comments-title">评论</h3>
        <el-row justify="start" align="start">
            <!-- 头像 -->
            <el-col :span="2">
                <el-avatar class="comments-avatar" :icon="UserFilled" />
            </el-col>
            <el-col :span="12">
                <el-input v-model="inpuRef" type="textarea" :autosize="{ minRows: 4 }" show-word-limit resize="none"
                    maxlength="1000" />
            </el-col>
        </el-row>
        <el-row justify="start" align="middle" class="comments-btn-group">
            <el-col :offset="10" :span="2">
                <el-row justify="end">
                    <el-button class="comments-btn" type="info" :icon="Picture" />
                </el-row>
            </el-col>
            <el-col :span="2">
                <el-row justify="end">
                    <el-button class="comments-btn" type="primary">
                        发布
                    </el-button>
                </el-row>
            </el-col>
        </el-row>
    </div>
    <el-divider></el-divider>
    <div class="comments-list">
        <el-row class="comments-item">
            <el-col class="comments-avatar" :span="1">
                <el-avatar :icon="UserFilled"></el-avatar>
            </el-col>
            <el-col :span="12">
                <el-row class="user-name">用户8816655084104</el-row>
                <el-row class="comment"> 如果我这样写呢</el-row>
                <el-row align="middle">
                    <el-col :span="4">{{ moment().format('YYYY-MM-DD') }}</el-col>
                    <el-col :span="4">
                        <div class="flex-row">
                            <el-icon>
                                <Star />
                            </el-icon>
                            {{ 12 }}
                        </div>
                    </el-col>
                    <el-col :span="4">

                    </el-col>
                </el-row>
            </el-col>
        </el-row>
    </div>
</template>

<style scoped>
.comments-avatar {
    margin: 0 16px;
}

.comments-title {
    padding: 8px 16px 32px 16px;
    font-weight: 600;
}

.comments-btn-group {
    margin: 16px 0;
}

.comments-btn {
    padding: 0 auto;
}

.comments-list {
    .comments-item {
        .user-name {
            color: #515767;
            font-size: 16px;
            font-weight: 400;
            line-height: 24px;
        }

        .el-row {
            margin-bottom: 8px;
        }
    }
}

.flex-row{
    display: flex;
    align-items: center;
    justify-content: center;
}
</style>
