<script lang="ts" setup>
import router from '@/router';
import {
    Document,
    Menu as IconMenu,
    Location,
    Setting,
} from '@element-plus/icons-vue'
import { ref } from 'vue';

const handleOpen = (key: string, keyPath: string[]) => {
    console.log(key, keyPath)
}
const handleClose = (key: string, keyPath: string[]) => {
    console.log(key, keyPath)
}

const onJump = () => {
    router.push({
        path: '/'
    })
}
</script>

<template>
    <el-row class="tac">
        <el-col :span="24">
            <h5 class="side-title">导航</h5>
            <el-menu default-active="1" class="side-menu" @open="handleOpen" @close="handleClose">
                <el-menu-item index="1" @click="onJump">
                    <template #title>
                        <el-icon>
                            <location />
                        </el-icon>
                        <span>首页</span>
                    </template>
                </el-menu-item>
                <el-menu-item index="2">
                    <el-icon><icon-menu /></el-icon>
                    <span>留言</span>
                </el-menu-item>
                <el-menu-item index="3">
                    <el-icon>
                        <document />
                    </el-icon>
                    <span>相册</span>
                </el-menu-item>
                <el-menu-item index="4">
                    <el-icon>
                        <setting />
                    </el-icon>
                    <span>设置</span>
                </el-menu-item>
            </el-menu>
        </el-col>
    </el-row>
</template>

<style>
.side-title,
.side-menu {
    color: #98a6ad;
    text-align: center;
}

.side-menu{
    height: 100%;
}
</style>
  

  