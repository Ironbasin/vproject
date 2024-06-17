<template>
  <div>
    <button @click="toggleContent">
      {{ showMore ? '点击隐藏' : '点击显示' }}
    </button>
    <transition name="fade">
      <div v-if="showMore" class="content">
        <h3>中国各个城市的景点</h3>
        <p>探索中国最美丽的景点和自然奇观：</p>
        <div class="scenic-spots">
          <div class="scenic-spot" v-for="(spot, index) in displayedSpots" :key="spot.name">
            <img :src="spot.image" :alt="spot.name" @click="toggleSpot(index)" />
            <div>
              <h4>{{ spot.name }}</h4>
              <p>{{ spot.description }}</p>
            </div>
          </div>
        </div>
        <p>无论你是喜欢历史文化，还是自然风光，我们都能为你提供最合适的旅游建议和攻略。</p>
      </div>
    </transition>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showMore: false,
      scenicSpots: [
        [
          {
            name: '北京的长城',
            image: require('@/assets/great_wall.jpg'),
            description: '长城是北京的著名历史景点，体现了中国古代建筑的辉煌。'
          },
          {
            name: '北京的故宫',
            image: require('@/assets/forbidden_city.jpg'),
            description: '故宫是北京的著名历史景点，展示了中国古代皇宫的宏伟。'
          }
        ],
        [
          {
            name: '上海的外滩',
            image: require('@/assets/shanghai_bund.jpg'),
            description: '外滩是上海的标志性景点，展示了城市的现代化和繁荣。'
          },
          {
            name: '上海的东方明珠',
            image: require('@/assets/oriental_pearl.jpg'),
            description: '东方明珠是上海的标志性建筑，展示了城市的现代化和繁荣。'
          }
        ],
        [
          {
            name: '西安的兵马俑',
            image: require('@/assets/terracotta_army.jpg'),
            description: '兵马俑是西安的著名景点，体现了中国古代文化的魅力。'
          },
          {
            name: '西安的大雁塔',
            image: require('@/assets/giant_wild_goose_pagoda.jpg'),
            description: '大雁塔是西安的著名景点，体现了中国古代文化的魅力。'
          }
        ],
        [
          {
            name: '桂林的漓江',
            image: require('@/assets/li_river.jpg'),
            description: '漓江是桂林的自然景观，展示了中国的山水之美。'
          },
          {
            name: '桂林的象鼻山',
            image: require('@/assets/elephant_trunk_hill.jpg'),
            description: '象鼻山是桂林的自然景观，展示了中国的山水之美。'
          }
        ],
        [
          {
            name: '成都的都江堰',
            image: require('@/assets/dujiangyan.jpg'),
            description: '都江堰是成都的著名景点，体现了古代工程的伟大。'
          },
          {
            name: '成都的青城山',
            image: require('@/assets/qingcheng_mountain.jpg'),
            description: '青城山是成都的著名景点，体现了道教文化的深厚。'
          }
        ],
        [
          {
            name: '杭州的西湖',
            image: require('@/assets/west_lake.jpg'),
            description: '西湖是杭州的著名景点，展示了自然和文化的融合。'
          },
          {
            name: '杭州的灵隐寺',
            image: require('@/assets/lingyin_temple.jpg'),
            description: '灵隐寺是杭州的著名景点，展示了佛教文化的深厚。'
          }
        ],
        [
          {
            name: '苏州的拙政园',
            image: require('@/assets/zhuozheng_garden.jpg'),
            description: '拙政园是苏州的著名景点，展示了中国古典园林的美。'
          },
          {
            name: '苏州的寒山寺',
            image: require('@/assets/hanshan_temple.jpg'),
            description: '寒山寺是苏州的著名景点，展示了佛教文化的深厚。'
          }
        ],
        [
          {
            name: '拉萨的布达拉宫',
            image: require('@/assets/potala_palace.jpg'),
            description: '布达拉宫是拉萨的著名景点，体现了西藏的宗教文化。'
          },
          {
            name: '拉萨的大昭寺',
            image: require('@/assets/jokhang_temple.jpg'),
            description: '大昭寺是拉萨的著名景点，体现了西藏的宗教文化。'
          }
        ],
        [
          {
            name: '香港的维多利亚港',
            image: require('@/assets/victoria_harbour.jpg'),
            description: '维多利亚港是香港的著名景点，展示了城市的多元化。'
          },
          {
            name: '香港的迪士尼乐园',
            image: require('@/assets/hk_disneyland.jpg'),
            description: '迪士尼乐园是香港的著名景点，展示了城市的多元化和娱乐性。'
          }
        ],
        [
          {
            name: '澳门的大三巴牌坊',
            image: require('@/assets/ruins_of_st_paul.jpg'),
            description: '大三巴牌坊是澳门的著名景点，体现了历史的深厚。'
          },
          {
            name: '澳门的威尼斯人酒店',
            image: require('@/assets/venetian_macau.jpg'),
            description: '威尼斯人酒店是澳门的著名景点，体现了现代的繁荣。'
          }
        ]
      ],
      currentSpots: Array(10).fill(0)
    };
  },
  computed: {
    displayedSpots() {
      return this.scenicSpots.map((spots, index) => spots[this.currentSpots[index]]);
    }
  },
  methods: {
    toggleContent() {
      this.showMore = !this.showMore;
    },
    toggleSpot(index) {
      this.currentSpots[index] = 1 - this.currentSpots[index];
    }
  }
}
</script>

<style scoped>
button {
  margin-top: 1rem;
  padding: 0.5rem 1rem;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
button:hover {
  background-color: #45a049;
}
.content {
  margin-top: 1rem;
  text-align: center;
}
.scenic-spots {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
.scenic-spot {
  margin: 1rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 45%;
}
.scenic-spot img {
  width: 100%;
  height: auto;
  object-fit: cover;
  margin-bottom: 0.5rem;
  cursor: pointer;
}
.scenic-spot h4 {
  margin: 0;
  font-size: 1.2rem;
  color: #333;
}
.scenic-spot p {
  margin: 0.5rem 0 0;
  line-height: 1.6;
  color: #666;
}
.fade-enter-active, .fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
}
</style>
