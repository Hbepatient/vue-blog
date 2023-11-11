<script setup lang="ts">
import {
    User,
    Clock,
    ChatSquare,
    View,
    EditPen
} from '@element-plus/icons-vue'
import Vditor from 'vditor';
import 'vditor/dist/index.css';
import moment from 'moment'
import { ref, onMounted, computed, watch, watchEffect } from 'vue';
import { useArticleStore } from '@/stores/article'

const { article } = useArticleStore()
const vditor = ref<Vditor | null>(null);
onMounted(() => {

    // vditor.value = new Vditor('vditor', {
    //     after: () => {
    //         // vditor.value is a instance of Vditor now and thus can be safely used here
    //         vditor.value!.setValue(''
    //         );
    //     },
    //     toolbarConfig: {
    //         hide: true
    //     },
    //     outline: {
    //         enable: true,
    //         position: 'left'
    //     },
    //     counter: {
    //         enable: true,
    //         type: 'text'
    //     }
    // });
});
</script>

<template>
    <div class="detail-wrapper">
        <h1>SSH公钥登录和RSA非对称加密</h1>
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
            <span class="info-item">
                <el-icon>
                    <View />
                </el-icon>
                <span class="info-item-text">10次浏览</span>
            </span>
            <span class="info-item">
                <el-icon>
                    <EditPen />
                </el-icon>
                <span class="info-item-text">1023字数</span>
            </span>
        </div>
        <!-- <div v-html="articleHtml">
        </div> -->
        <v-md-preview class="preview" :text="article"></v-md-preview>
        <!-- <div id="vditor" /> -->
    </div>
</template>

<style>
.detail-wrapper {
    padding: 0 16px;
}

.article-info {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 420px;
    margin-top: 10px;
}

.info-item {
    display: flex;
    align-items: center;
    font-size: 14px;
    color: #a0a0a0;
}

.info-item-text {
    padding-left: 6px;
}

.preview {
    padding: 0;
}

.github-markdown-body {
    padding: 10px 0 !important;
}
</style>
