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
            active-text-color="rgb(35,54,70) "
            style="margin-left:-15px;" >
              <el-submenu index="1">
                  <template class="changebg" slot="title">adminstrator</template>
                  <el-menu-item index="1-1">选项1</el-menu-item>
                  <el-menu-item index="1-2">选项2</el-menu-item>
                  <el-menu-item index="1-3">选项3</el-menu-item>
              </el-submenu>
           </el-menu>
           </div>
         <div class="aside_body">555</div>
      </el-aside>
      <el-main  class="emain"></el-main>
    </el-container>
    <router-view/>
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
.emain{
  background: yellow;
  height: 100%;
}
</style>
