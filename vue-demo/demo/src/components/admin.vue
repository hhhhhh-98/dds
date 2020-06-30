<template>
<div>
  <!--
    一个简单的计算机，使用按钮输入数字和表达式，能进行简单的+-*/
  -->
  <el-row>
    <el-button type="primary" circle>1</el-button>
    <el-button type="primary" circle>2</el-button>
    <el-button type="primary" circle>3</el-button>
    <el-button type="primary" >+</el-button>
  </el-row><br/>
    <el-row>
    <el-button type="primary" circle>4</el-button>
    <el-button type="primary" circle>5</el-button>
    <el-button type="primary" circle>6</el-button>
    <el-button type="primary" >-</el-button>
  </el-row><br/>
    <el-row>
    <el-button type="primary" circle>7</el-button>
    <el-button type="primary" circle>8</el-button>
    <el-button type="primary" circle>9</el-button>
    <el-button type="primary" >*</el-button>
  </el-row><br/>
  <el-row>
    <el-button type="primary" >/</el-button>
    <el-button type="primary" >=</el-button>
  </el-row>
</div>
</template>
<script>
export default {
  data () {
    return {

    }
  }
}
</script>
<style scoped>

</style>
