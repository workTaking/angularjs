var path = require("path"); //出口路径
var htmlWebpackPlugin = require('html-webpack-plugin'); //html插件
//css分离
const miniCssExtractPlugin = require("mini-css-extract-plugin");


module.exports = {
	entry:'./src/app.js',
	output:{
		path:path.resolve(__dirname,'./dist'),
		filename:'js/[name].js', //js/[name]-[hash].js前不能加./
		publicPath:'http://localhost:8888/'
	},
	//处理css,scss,es6
	module:{
		rules:[
		//html
			{
				test:/\.html$/,
				use:[
					{loader:'html-loader'}
				]
			},
			//js
			{
				test:/\.js$/,
				loader:'babel-loader',
				include:[
					path.resolve(__dirname,"src")
				],
				exclude:/node_modules/,
				options:{
					presets:['env']
				}
			},
			//css
			// {
			// 	test:/\.css$/,
			// 	use:[
			// 		{loader:'style-loader'},
			// 		{loader:'css-loader?importLoaders=1'},
			// 		{
			// 			loader:'postcss-loader',
			// 			 options:{
			// 			 	plugins:[
			// 			 		require('autoprefixer')({
			// 			 			browsers:['last 5 versions']
			// 			 		})
			// 			 	]
			// 			 }	
			// 		}
			// 	]
			// },
			// //css loader
			{
				test:/\.css$/,
				use:[
					miniCssExtractPlugin.loader,
					{
						loader:'css-loader',
						options:{
							minimize:true
						}
					}
				]
			},
			//scss
			{
				test:/\.scss$/,
				use:[
					{loader:'style-loader'},
					{loader:'css-loader'},
					{loader:'postcss-loader'},
					{loader:'sass-loader'}
				]
			},
			//scss
			// {
			// 	test:/\.scss$/,
				
   //              use: [{loader:miniCssExtractPlugin.loader	},{loader:"style-loader"},{loader:"css-loader"},{loader:"postcss-loader"},{loader:"sass-loader"}]
                  
			// },
			//图片 loader
            {
                test:/\.(png|jpg|gif|jpeg|svg)/,  //是匹配图片文件后缀名称
                use:[{
                    loader:'url-loader', //是指定使用的loader和loader的配置参数
                    options:{
                        limit:500,  //是把小于500B的文件打成Base64的格式，写入JS
                    	outputPath:'images'
                    }
                }]
            },
			
		]
	},

	//html 模版
	plugins:[
		new htmlWebpackPlugin({
			filename:"index.html",
			template:'index.html',
			inject:'body',
			title:"webpack is a",
			date:new Date(),
			minify:{
				// removeComments:true, //删除注释
				// collapseWhitespace:true //delete 空格

			}
			// chunks:['main','a'] //要引入的js
			// excludeChunks:['b']
		}),
		 //css分离
        new miniCssExtractPlugin({
        	filename:"./css/[name].css"
        })
	
		
	],
	//配置webpack开发服务功能
	devServer:{
		//设置基本目录结构,用于找到程序打包地址
            contentBase:path.resolve(__dirname,'../dist'),
            //服务器的IP地址，可以使用IP也可以使用localhost
            host:'localhost',
            //服务端压缩是否开启
            compress:true,
            //配置服务端口号
            port:8888,
            open:false //自动打开
	}
};