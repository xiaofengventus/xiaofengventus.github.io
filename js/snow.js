// source/js/snow.js
//helped by grok 2026/5/23
(function() {
    function createSnow() {
        const snowContainer = document.createElement('div');
        snowContainer.style.position = 'fixed';
        snowContainer.style.top = '0';
        snowContainer.style.left = '0';
        snowContainer.style.width = '100%';
        snowContainer.style.height = '100%';
        snowContainer.style.pointerEvents = 'none';
        snowContainer.style.zIndex = '9999';
        snowContainer.style.overflow = 'hidden';
        document.body.appendChild(snowContainer);

        const snowCount = 80;

        for (let i = 0; i < snowCount; i++) {
            const snow = document.createElement('div');
            snow.textContent = '❄';
            snow.style.position = 'absolute';
            snow.style.color = '#fff';
            snow.style.opacity = Math.random() * 0.8 + 0.2;
            snow.style.fontSize = Math.random() * 20 + 12 + 'px';
            snow.style.left = Math.random() * 100 + 'vw';
            snow.style.top = '-50px';
            snow.style.animation = `fall ${Math.random() * 8 + 8}s linear infinite`;
            snow.style.animationDelay = `-${Math.random() * 10}s`;
            snowContainer.appendChild(snow);
        }
    }

    // 添加动画样式
    const style = document.createElement('style');
    style.textContent = `
        @keyframes fall {
            to {
                transform: translateY(105vh);
            }
        }
    `;
    document.head.appendChild(style);

    // 页面加载完成后执行
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', createSnow);
    } else {
        createSnow();
    }
})();