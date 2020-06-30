<template>
  <div id="app">
    <el-container>
      <el-aside width="200px" class="easide">
         <div class="aside_head">
           <img src= "./assets/logo.png"/>
           <br/>VUE

           <el-menu :class="el-menu-demo "
            mode="horizontal"
            @select="handleSelect"
            background-color="rgb(35,54,70)"
            active-text-color="white "
            style="margin-left:-15px;" >
              <el-submenu index="1" @click.native="seeTable">
                  <template class="changebg" slot="title">adminstrator</template>
                  <el-menu-item index="1-1">选项1</el-menu-item>
                  <el-menu-item index="1-2">选项2</el-menu-item>
                  <el-menu-item index="1-3">选项3</el-menu-item>
              </el-submenu>
           </el-menu>
           </div>
         <div class="aside_body">
 <el-menu
      default-active="this.$router.path" router
      class="el-menu-vertical-demo"
      @open="handleOpen"
      @close="handleClose"
      background-color="#545c64"
      text-color="#fff"
      active-text-color="#ffd04b">
      <el-submenu index="1">
        <template slot="title">
          <i class="el-icon-menu"></i>
          <span>工具栏</span>
        </template>
        <el-menu-item-group>
          <template slot="title">计算器</template>
          <el-menu-item index="/test">手动计算器</el-menu-item>
          <el-menu-item index="/admin">古典计算器</el-menu-item>
        </el-menu-item-group>
        <el-menu-item-group title="分组2">
          <el-menu-item index="1-3">选项3</el-menu-item>
        </el-menu-item-group>
        <el-submenu index="1-4">
          <template slot="title">选项4</template>
          <el-menu-item index="1-4-1">选项1</el-menu-item>
        </el-submenu>
      </el-submenu>
      <el-menu-item index="2">
        <i class="el-icon-menu"></i>
        <span slot="title">导航二</span>
      </el-menu-item>
      <el-menu-item index="3" >
        <i class="el-icon-document"></i>
        <span slot="title">导航三</span>
      </el-menu-item>
      <el-menu-item index="4">
        <i class="el-icon-setting"></i>
        <span slot="title">导航四</span>
      </el-menu-item>
    </el-menu>

         </div>
      </el-aside>
      <el-main  class="emain">
         <router-view> </router-view>
      </el-main>
    </el-container>
  </div>

</template>

<script>
export default {

}
</script>

<style>
*{
  padding: 0;
  margin: 0;

}
a{
  text-decoration: none;
  color: inherit;
}

.easide{
  background: aqua;

}
.aside_head{
  background: rgb(35, 54, 70);
  padding-top: 40px;
  padding-left: 20px;
}

.aside_head img{
  width: 50px;
  height: 50px;
  border-radius: 100%;
}
.aside_body{
  background: rgb(47, 54, 80);
}

</style>
