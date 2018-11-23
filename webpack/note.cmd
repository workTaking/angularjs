文件分为4部分：1：error；2：配置文件 3：插件 4：webpack创建步骤

error:  Unexpected end of JSON input while parsing near '...dencies":{"bn.js":"^0'

解决办法：清除缓存  



the provided value "./dist" is note an absolute path!

解决办法：需要require("path")
		 var path = require("path")

		 path: path.resolve(__dirname, './dist'),


在使用htmlWebpackPlugin生成多个模版时，出现
error:Cannot read property 'entry' of undefined;
原因：在模版文件中引用了js


babel-loader08.0.4 requires a peer of @babel/core0^7.0.0 but none is installed.
app01.0.0 No description
app01.0.0 No repository field.

更新babel-loader

No PostCSS Config found in :"G:"

在根目录下创建post.config.js
module.exports = { 
  plugins: { 
    'autoprefixer': {browsers: 'last 5 version'} 
  } 
}


淘宝镜像下载sass:
npm config set sass_binary_site https://npm.taobao.org/mirrors/node-sass/


package.json 是配置文件
	"scripts": {
	    "test": "echo \"Error: no test specified\" && exit 1",
	    "watch":"webpack --watch", //观察者模式
	    "webpack":"webpack --config webpack.config.js --progress --display-modules --colors --display-reason" 打包过程中的显示
	  	上面的webpack 在打包时使用：npm run webpack 如果改为build 就是npm run build
	  },		 



插件：
htmlWebpackPlugin

new htmlWebpackPlugin({
			template:'index.html',
			inject:"head", //表示在哪里插入
			title:"webpack is good", 
			date:new Date()
		})

<%= htmlWebpackPlugin.options.title %> 里面直接从webpack.config.htmlWebpackPlugin插件中获取值

单文件引用：
<!-- <script type="text/javascript" src="<%= htmlWebpackPlugin.files.chunks.a.entry %>" ></script> -->
<!-- <script type="text/javascript" src="<%= htmlWebpackPlugin.files.chunks.main.entry %>" ></script>







npm init 创建

webpack --mode=development

webpack --config webpack.config.js

npm run build


npm install  --save-dev babel-loader babel-core

npm install --save-dev babel-preset-latest

npm install xxx-loader --save-dev