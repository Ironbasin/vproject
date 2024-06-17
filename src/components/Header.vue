<template>
  <header>
    <nav>
      <ul>
        <li><router-link to="/">首页</router-link></li>
        <li><router-link to="/about">关于我们</router-link></li>
        <li class="contact" @mouseover="showContactMenu = true" @mouseleave="showContactMenu = false">
          <a href="javascript:void(0)">联系我们</a>
          <div class="dropdown" v-if="showContactMenu">
            <a href="javascript:void(0)" @click="showQQQR">
              <img src="@/assets/qq_icon.png" alt="QQ" />
            </a>
            <a href="javascript:void(0)" @click="showWeChatQR">
              <img src="@/assets/wechat_icon.png" alt="微信" />
            </a>
          </div>
        </li>
      </ul>
    </nav>
  </header>
  <div v-if="qqQRVisible" class="qr-modal" @click="hideQQQR">
    <div class="qr-content" @click.stop>
      <img src="@/assets/qq_qr.png" alt="QQ QR Code" />
      <p>扫描二维码添加QQ</p>
      <button @click="hideQQQR">关闭</button>
    </div>
  </div>
  <div v-if="wechatQRVisible" class="qr-modal" @click="hideWeChatQR">
    <div class="qr-content" @click.stop>
      <img src="@/assets/wechat_qr.png" alt="WeChat QR Code" />
      <p>扫描二维码添加微信</p>
      <button @click="hideWeChatQR">关闭</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      qqQRVisible: false,
      wechatQRVisible: false,
      showContactMenu: false
    };
  },
  methods: {
    showQQQR() {
      this.qqQRVisible = true;
    },
    hideQQQR() {
      this.qqQRVisible = false;
    },
    showWeChatQR() {
      this.wechatQRVisible = true;
    },
    hideWeChatQR() {
      this.wechatQRVisible = false;
    }
  }
}
</script>

<style scoped>
header {
  background-color: rgba(76, 175, 80, 0.8); /* 绿色模糊透明背景 */
  color: white;
  padding: 1rem;
  position: fixed;
  width: 100%;
  z-index: 1000;
  backdrop-filter: blur(10px);
}
nav ul {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  justify-content: space-around;
  align-items: center;
}
nav ul li {
  display: inline;
  position: relative;
}
nav ul li a, nav ul li router-link {
  color: white;
  text-decoration: none;
  font-weight: bold;
}
nav ul li.contact .dropdown {
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  top: 100%;
  left: 0;
  background-color: rgba(76, 175, 80, 0.8);
  padding: 10px;
  border-radius: 5px;
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.3s ease, visibility 0.3s ease;
  z-index: 1001;
}
nav ul li.contact:hover .dropdown {
  opacity: 1;
  visibility: visible;
}
nav ul li.contact .dropdown a {
  display: flex;
  align-items: center;
  margin: 0 10px;
  cursor: pointer;
}
nav ul li.contact .dropdown img {
  width: 24px; /* 调整图片大小 */
  height: 24px; /* 调整图片大小 */
}
.qr-modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1002;
}
.qr-content {
  background: white;
  padding: 20px;
  border-radius: 10px;
  text-align: center;
  position: relative;
}
.qr-content img {
  max-width: 300px; /* 设置最大宽度 */
  max-height: 540px; /* 设置最大高度 */
}
.qr-content button {
  margin-top: 1rem;
  padding: 0.5rem 1rem;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
.qr-content button:hover {
  background-color: #45a049;
}
</style>
