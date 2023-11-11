<script setup lang="ts">
import Header from '@/components/Header.vue'
import SideBar from '@/components/SideBar.vue';

</script>

<template>
  <div class="page-wrapper">
    <Header />
    <div class="home-title">
      <h2>一花凋零，一花绽</h2>
      <span>窗外日光弹指过，席前花影坐前移。</span>
    </div>
    <el-divider />
    <el-row class="page-content" justify="space-between" align="top">
      <el-col :span="4">
        <SideBar />
      </el-col>
      <el-col :span="20">
        <router-view></router-view>
      </el-col>
    </el-row>

  </div>
</template>

<style scoped>
.page-wrapper {
  width: 1200px;
  margin: 0 auto;
  box-shadow: 0px 0px 4px 3px rgba(0, 0, 0, 0.2);
  background-color: #f9f9f9;
  position: inherit;
}

.page-content {
  /* padding-top: 20px; */
  min-height: 800px;
  /* position: absolute; */
}

.home-title {
  text-align: left;
  padding-left: 50px;
}

.header,
.side-bar {
  position: fixed;
}
</style>
