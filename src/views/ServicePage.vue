<template>
  <div class="service-page">
    <h1>个性化服务</h1>
    <p>根据您的需求提供个性化的旅游建议和服务。</p>
    <div class="services">
      <div class="service" v-for="service in services" :key="service.title">
        <h2>{{ service.title }}</h2>
        <p>{{ service.content }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Service',
  data() {
    return {
      services: [
        {
          title: '定制旅行路线',
          content: '根据您的兴趣和时间安排，为您定制最合适的旅行路线，确保您能够充分享受旅行的每一刻。'
        },
        {
          title: '个性化导游服务',
          content: '提供专业的个性化导游服务，让您深入了解目的地的历史、文化和风土人情。'
        },
        // 添加更多服务信息
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
.services {
  display: flex;
  flex-direction: column;
  gap: 2rem;
  align-items: center;
}
.service {
  background-color: #fff;
  padding: 1rem;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  width: 80%;
  max-width: 600px;
}
.service h2 {
  margin: 1rem 0;
  font-size: 1.5rem;
  color: #333;
}
.service p {
  color: #666;
}
</style>
