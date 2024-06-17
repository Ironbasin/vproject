<template>
  <main>
    <section id="content">
      <h1>欢迎来到我们的旅游风景项目</h1>
      <p>这是一个充满美丽风景和旅游信息的区域。点击下面的按钮以查看更多内容。</p>
      <ToggleContent />
    </section>
  </main>
</template>

<script>
import ToggleContent from './ToggleContent.vue';

export default {
  components: {
    ToggleContent
  }
}
</script>

<style scoped>
main {
  padding: 2rem;
  text-align: center;
}
</style>
