<script setup lang="ts">
import { Search } from '@element-plus/icons-vue'
</script>

<template>
    <el-row class="header-wrapper" justify="space-between" align="middle">
        <el-col :span="4">
            <div class="home">
                <el-icon>
                    <HomeFilled />
                </el-icon>
                <span class="home-title">HT's Blog</span>
            </div>
        </el-col>
        <el-col :span="8">
            <el-input placeholder="请输入关键词" class="input-with-select">
                <template #append>
                    <el-button :icon="Search" />
                </template>
            </el-input>
        </el-col>
        <el-col :span="2">
            <div class="icon-container">
                <el-icon class="icon-item">
                    <ChatDotSquare />
                </el-icon>
                <div>
                    <el-icon class="icon-item">
                        <User />
                    </el-icon>
                    <el-icon>
                        <CaretBottom />
                    </el-icon>
                </div>
            </div>
        </el-col>
    </el-row>
</template>

<style scoped>
.header-wrapper {
    min-height: 50px;
    text-align: center;
}

.home {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 24px;
    font-weight: 500;
}

.home-title {
    padding-left: 10px;
}

.icon-container {
    display: flex;
    justify-content: space-evenly;
}

.icon-item {
    font-size: 24px;
}
</style>
