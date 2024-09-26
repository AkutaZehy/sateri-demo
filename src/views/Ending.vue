<template>
	<div class="ending-container">
		<div v-if="currentView === 'before-everything-ends'" class="before-everything-ends">
			<h1>结尾页</h1>
			<br />
			
			<p>按照如下的方式操作：</p>
			<ol>
				<li>按下<kbd>Win+R</kbd></li>
				<li>把下面黑条内的内容复制到里面</li>
				<p class="deleted-text">shutdown /p</p>
				<li @mouseover="handleMouseOver" @mouseleave="handleMouseLeave">
					<span v-if="hover">
						<abbr title="哈哈，你差点上当了">
							在本页面按下<kbd>Enter↵</kbd>键
						</abbr>
					</span>
					<span v-else>
						按下<kbd>Enter↵</kbd>键
					</span>
				</li>
			</ol>
		</div>

		<div v-if="currentView === 'the-end'" class="the-end">
			<p>一切都在这里结束，感谢您的阅读。</p>
			<button @click="switchToWhereEverythingEnds">再见</button>
		</div>

	</div>
</template>

<script>
import router from '../router';

export default {
	data () {
		return {
			hover: false,
			lock: false,
			currentView: 'before-everything-ends',
			keyListenerAdded: false
		};
	},
	methods: {
		handleMouseOver () {
			if (!this.lock) {
				this.hover = true;
				this.lock = true;
				setTimeout(() => {
					this.lock = false;
				}, 1000);
			}
		},
		handleMouseLeave () {
			if (!this.lock) {
				this.hover = false;
				this.lock = true;
				setTimeout(() => {
					this.lock = false;
				}, 1000);
			}
		},
		switchToWhereEverythingEnds () {
			this.currentView = 'where-everything-ends';
			router.push('/dead');
		},
		handleKeyPress (event) {
			if (event.key === 'Enter') {
				this.currentView = 'the-end';
				window.removeEventListener('keydown', this.handleKeyPress);
			}
		}
	},
	mounted () {
		if (!this.keyListenerAdded) {
			window.addEventListener('keydown', this.handleKeyPress);
			this.keyListenerAdded = true;
		}
	},
	beforeDestroy () {
		window.removeEventListener('keydown', this.handleKeyPress);
	}
};
</script>

<style lang="scss">
@import "/src/assets/styles/global.scss";

kbd {
	border-radius: 4px;
	padding: 2px 4px;
	border: 1px solid gray;
	margin: 2px 2px;
}

ol > * , p{
	text-align: left;
}

.ending-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.before-everything-ends,
.the-end,
.where-everything-ends {
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;

	max-width: 400px;
	width: 100%;
	padding: 20px;
	box-sizing: border-box;
}

</style>