<template>
    <div class="about">
      <h1>关于</h1>
      <div class="content">
        <p>欢迎来到我们的旅游风景项目！</p>
        <p>我们的目标是为您提供中国最美丽的景点和自然奇观的详细信息。无论您是喜欢历史文化，还是自然风光，我们都能为您提供最合适的旅游建议和攻略。</p>
        <p>探索中国，发现它的美丽和多样性。我们希望通过这个项目，能让更多人了解和欣赏中国的风景名胜。</p>
        <p>谢谢您的访问，并希望您能从中获得灵感，计划您下一次的旅行。</p>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'About'
  }
  </script>
  
  <style scoped>
  .about {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    padding: 2rem;
    background-color: #f0f8ff;
    min-height: 100vh; /* 确保页面至少占满整个视窗高度 */
    padding-top: 4rem;
  }
  
  h1 {
    font-size: 2.5rem;
    color: #4CAF50;
    margin-bottom: 1rem;
  }
  
  .content {
    max-width: 800px;
    text-align: center;
    background: white;
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }
  
  .content p {
    font-size: 1.2rem;
    line-height: 1.6;
    color: #333;
    margin-bottom: 1rem;
  }
  </style>
  