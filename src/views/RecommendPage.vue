<template>
  <div class="service-page">
    <h1>景点推荐</h1>
    <p>在这里，我们为您提供中国各地的热门景点推荐，帮助您规划旅行路线。</p>
    <div class="recommendations">
      <div class="recommendation" v-for="spot in spots" :key="spot.name">
        <img :src="spot.image" :alt="spot.name">
        <h2>{{ spot.name }}</h2>
        <p>{{ spot.description }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Recommend',
  data() {
    return {
      spots: [
        {
          name: '长城',
          image: require('@/assets/great_wall.jpg'),
          description: '长城是中国最著名的历史遗迹之一，展示了古代中国的工程壮举。'
        },
        {
          name: '故宫',
          image: require('@/assets/forbidden_city.jpg'),
          description: '故宫是中国明清两代的皇宫，是世界上现存规模最大、保存最完整的木质结构古建筑之一。'
        },
        // 添加更多景点信息
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
.recommendations {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 2rem;
}
.recommendation {
  background-color: #fff;
  padding: 1rem;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  width: 300px;
}
.recommendation img {
  width: 100%;
  border-radius: 10px;
}
.recommendation h2 {
  margin: 1rem 0;
  font-size: 1.5rem;
  color: #333;
}
.recommendation p {
  color: #666;
}
</style>
