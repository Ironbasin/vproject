<template>
  <div class="service-page">
    <h1>旅行攻略</h1>
    <p>详细的旅行攻略和实用信息，确保您的旅行顺利愉快。</p>
    <div class="strategies">
      <div class="strategy" v-for="strategy in strategies" :key="strategy.title">
        <h2>{{ strategy.title }}</h2>
        <p>{{ strategy.content }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Strategy',
  data() {
    return {
      strategies: [
        {
          title: '如何选择最佳旅行时间',
          content: '选择最佳旅行时间是确保您旅行顺利的重要一步。了解目的地的气候和节假日安排，以避免人流高峰期。'
        },
        {
          title: '旅行必备物品清单',
          content: '制定一个详细的旅行物品清单，包括证件、衣物、药品、电子设备等，以确保您在旅行途中不会遗漏重要物品。'
        },
        // 添加更多攻略信息
      ]
    };
  }
}
</script>

<style scoped>
.service-page {
  text-align: center;
  padding: 2rem;
}
.strategies {
  display: flex;
  flex-direction: column;
  gap: 2rem;
  align-items: center;
}
.strategy {
  background-color: #fff;
  padding: 1rem;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  width: 80%;
  max-width: 600px;
}
.strategy h2 {
  margin: 1rem 0;
  font-size: 1.5rem;
  color: #333;
}
.strategy p {
  color: #666;
}
</style>
