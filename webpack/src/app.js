import './css/common.css';
import './css/layer.scss';
import './js/test.js';
import  './components/layer/layer2.scss';
import  Layer from './components/layer/layer.js';

const App = function(){
	var dom = document.getElementById("app");
	var layer = new Layer();
	dom.innerHTML =  layer.tpl;
}

new App();