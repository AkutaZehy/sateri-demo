<template>
	<div class="puzzle">
		<router-link to="/" class="link">返回</router-link>
		<h1>测试页</h1>
	</div>
	<div id="app">
		<div class="split-screen">
			<div class="left">
				<video controls class="video-player">
					<source :src="videoSrc" type="video/mp4">
				</video>
			</div>
			<div class="right">
				<p>ANOTHER CONTENT</p>
			</div>
		</div>
		<div class="hidden-text">
			<p>这是隐藏的文本。</p>
		</div>
		<div class="wiggling-text">
			<p>
				<span>神</span>
				<span>作</span>
				<span>，</span>
				<span>出</span>
				<span>现</span>
				<span>了</span>
				<span>！</span>
			</p>
		</div>
	</div>

	<div>
		<router-link to="/ending" class="link">跳转到结尾页</router-link>
	</div>
</template>

<script>
import { useRouter } from 'vue-router';

export default {
	name: 'Home',
	data () {
		return {
			password: '',
			errorMessage: '',
			errorCount: 0,
			showInput: true
		};
	},
	methods: {
	}
}
</script>

<style lang="scss">
@import "/src/assets/styles/global.scss";

.logo.vue {
	filter: drop-shadow(0 0 2em #747bff);

	&:hover {
		filter: drop-shadow(0 0 2em #249b73);
	}
}

:root {
	font-family: Inter, Avenir, Helvetica, Arial, sans-serif;
	font-size: 16px;
	line-height: 24px;
	font-weight: 400;

	color: #0f0f0f;
	background-color: #f6f6f6;

	font-synthesis: none;
	text-rendering: optimizeLegibility;
}

</style>
