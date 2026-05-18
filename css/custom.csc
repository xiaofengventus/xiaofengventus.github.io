/* 侧边栏纪元图书馆样式 */
.epoch-list {
  display: flex;
  flex-direction: column;
  gap: 14px;
  padding: 5px 10px;
}

.era-group {
  display: flex;
  flex-direction: column;
  gap: 4px;
}

/* 代的标题 */
.era-title {
  font-size: 11px;
  font-weight: bold;
  color: #999;
  text-transform: uppercase;
  letter-spacing: 1.5px;
  margin-bottom: 6px;
  border-bottom: 1px solid #eee;
  padding-bottom: 2px;
}

/* 纪的链接 */
.epoch-link {
  display: flex !important;
  justify-content: space-between;
  align-items: center;
  padding: 6px 12px;
  color: var(--font-color) !important;
  text-decoration: none !important;
  font-size: 14px;
  border-radius: 8px;
  background: var(--light-grey);
  transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
  border: 1px solid transparent;
}

.epoch-link small {
  font-size: 10px;
  color: #bbb;
  font-family: 'Courier New', Courier, monospace;
}

/* 鼠标悬停：生命绿 */
.epoch-link:hover {
  background: #eefaf5;
  color: #41b883 !important;
  border-color: #41b883;
  transform: translateX(4px);
}

/* 正在更新的高亮：余烬红 */
.epoch-link.active {
  background: #fff5f5;
  color: #ff6b6b !important;
  border: 1px solid #ff6b6b;
  font-weight: bold;
  box-shadow: 0 4px 12px rgba(255, 107, 107, 0.15);
}

.epoch-link.active small {
  color: #ff6b6b;
  opacity: 0.7;
}

/* 火苗微动动画 */
.fa-fire-alt {
  animation: flicker 1s infinite alternate;
}

@keyframes flicker {
  0% { transform: scale(1); opacity: 0.8; }
  100% { transform: scale(1.2); opacity: 1; text-shadow: 0 0 8px rgba(255,107,107,0.5); }
}