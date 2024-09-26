<template>
	<div class="ending-container">
		{{ triggerCriticalError() }}
	</div>
</template>

<script>
import { ref } from 'vue';

export default {
	data () {
		return {
		};
	},
	methods: {
		triggerCriticalError () {
			window.alert('正在加载文件".dead"');

			const intervalId = setInterval(() => {
				const randomNum = Math.random();
				let randomContent = '';
				if (randomNum < .01) {
					randomContent = this.generateTeaser();
				} else {
					randomContent = this.generateRandomContent();
				}
				setTimeout(() => {
					this.$el.innerHTML = '';
				}, 10);
				setTimeout(() => {
					this.$el.innerHTML = randomContent;
				}, 10);
			}, 1000);
		},
		getRandomUtf8Char () {
			const ranges = [
				[0x4E00, 0x9FFF], // 中文
				[0x0041, 0x005A], // 英文大写字母
				[0x0061, 0x007A], // 英文小写字母
				[0x0400, 0x04FF], // 俄文
				[0x00C0, 0x00FF], // 西班牙文和法文特殊字符
				[0x3040, 0x309F], // 日文平假名
				[0x30A0, 0x30FF], // 日文片假名
				[0xAC00, 0xD7AF]  // 韩文
			];
			const randomRange = ranges[Math.floor(Math.random() * ranges.length)];
			const randomCodePoint = Math.floor(Math.random() * (randomRange[1] - randomRange[0] + 1)) + randomRange[0];
			return String.fromCodePoint(randomCodePoint);
		},
		generateRandomContent () {
			const tags = ['span'];
			let content = '';
			const fontFamily = 'Arial, sans-serif';
			const n = Math.floor(Math.random() * 10) + 5;
			for (let i = 0; i < n; i++) {
				const randomTag = tags[Math.floor(Math.random() * tags.length)];
				const randomUtf8Char = this.getRandomUtf8Char();
				content += `<${randomTag} style="font-family: ${fontFamily}; >${randomUtf8Char}</${randomTag}>`;
			}
			return content;
		},
		generateTeaser () {
			const teasers = [
				'<p>突然心血来潮，想要对着镜子录一段素材。<br /> \
					做音骂的也没事<br /> \
					只是，没有人跟我录，只能自己这样录<br /> \
					也不知道录什么素材<br /><br /> \
					啊~~~~</p>',
				'香辣火锅鸡',
				'干** 截了这么多图 还放视频 <br /> <br />凉郁 1楼 2017-11-08 17:00',
				'合成1.mp4',
				'<div class=\'wiggling-text\'><span>我</span><span>去</span><span>是</span><span>李</span><span>天</span><span>香</span><span>的</span><span>星</span><span>期</span><span>天</span><span>战</span><span>法</span></div>',
			]

			return teasers[Math.floor(Math.random() * teasers.length)];
		}
	}
}
</script>

<style lang="scss">
@use 'sass:math';

@keyframes wiggle {

	0%,
	100% {
		transform: translateX(0) translateY(0);
	}

	33% {
		transform: translateX(-5px) translateY(-5px);
	}

	66% {
		transform: translateX(5px) translateY(-5px);
	}
}

.wiggling-text {
	span {
		display: inline-block;
		animation: wiggle 0.2s infinite;

		// 使用循环为每个元素设置不同的动画持续时间
		@for $i from 1 through 1000 {
			&:nth-child(#{$i}) {
				$duration: 0.1s + (math.sin($i - 14) * 0.02s);
				animation-duration: #{$duration};
			}
		}
	}
}
</style>
