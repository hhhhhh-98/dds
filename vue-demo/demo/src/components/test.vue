<template>
  <div class="test1">
    {{msg}} <br />
    <input type="text" v-model="num1" v-on:input="cacul()"/>
    <select v-model="sel" v-on:change="cacul()">
      <option value="0">+</option>
      <option value="1">-</option>
      <option value="2">*</option>
      <option value="3">/</option>
    </select>
    <input type="text" v-model="num2" v-on:change="cacul()"/> =
    {{result}}
  </div>

</template>
<script>
export default {
  data () {
    return {
      msg: '简易计算机 ',
      sel: '0',
      num1: 0,
      num2: 0,
      result: 0
    }
  },
  methods: {
    cacul: function () {
      switch (this.sel) {
        case '0':
          this.result = parseInt(this.num1) + parseInt(this.num2)
          break
        case '1':
          this.result = parseInt(this.num1) - parseInt(this.num2)
          break
        case '2':
          this.result = parseInt(this.num1) * parseInt(this.num2)
          break
        case '3':
          this.result = parseInt(this.num1) / parseInt(this.num2)
          break
      }
    }
  }
}
</script>
<style scoped>
input{
  width: 40px;
  height: 20px;
}
select{
  width: 40px;
  height: 28px;
  font-size: 15px;
  line-height: 1;
}

</style>
