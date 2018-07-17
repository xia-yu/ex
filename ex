<html>
<head>
	<meta charset="utf-8">
	<meta name="format-detection" content="telephone=no">
		<meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta content="telephone=no" name="format-detection">
		<script>
		!function(a,b){function c(){var b=f.getBoundingClientRect().width;b/i>540&&(b=540*i);var c=b/10;f.style.fontSize=c+"px",k.rem=a.rem=c}var d,e=a.document,f=e.documentElement,g=e.querySelector('meta[name="viewport"]'),h=e.querySelector('meta[name="flexible"]'),i=0,j=0,k=b.flexible||(b.flexible={});if(g){console.warn("将根据已有的meta标签来设置缩放比例");var l=g.getAttribute("content").match(/initial\-scale=([\d\.]+)/);l&&(j=parseFloat(l[1]),i=parseInt(1/j))}else if(h){var m=h.getAttribute("content");if(m){var n=m.match(/initial\-dpr=([\d\.]+)/),o=m.match(/maximum\-dpr=([\d\.]+)/);n&&(i=parseFloat(n[1]),j=parseFloat((1/i).toFixed(2))),o&&(i=parseFloat(o[1]),j=parseFloat((1/i).toFixed(2)))}}if(!i&&!j){var p=a.navigator.userAgent,q=(!!p.match(/android/gi),!!p.match(/iphone/gi)),r=q&&!!p.match(/OS 9_3/),s=a.devicePixelRatio;i=q&&!r?s>=3&&(!i||i>=3)?3:s>=2&&(!i||i>=2)?2:1:1,j=1/i}if(f.setAttribute("data-dpr",i),!g)if(g=e.createElement("meta"),g.setAttribute("name","viewport"),g.setAttribute("content","initial-scale="+j+", maximum-scale="+j+", minimum-scale="+j+", user-scalable=no"),f.firstElementChild)f.firstElementChild.appendChild(g);else{var t=e.createElement("div");t.appendChild(g),e.write(t.innerHTML)}a.addEventListener("resize",function(){clearTimeout(d),d=setTimeout(c,300)},!1),a.addEventListener("pageshow",function(a){a.persisted&&(clearTimeout(d),d=setTimeout(c,300))},!1),"complete"===e.readyState?e.body.style.fontSize=12*i+"px":e.addEventListener("DOMContentLoaded",function(){e.body.style.fontSize=12*i+"px"},!1),c(),k.dpr=a.dpr=i,k.refreshRem=c,k.rem2px=function(a){var b=parseFloat(a)*this.rem;return"string"==typeof a&&a.match(/rem$/)&&(b+="px"),b},k.px2rem=function(a){var b=parseFloat(a)/this.rem;return"string"==typeof a&&a.match(/px$/)&&(b+="rem"),b}}(window,window.lib||(window.lib={}));
		</script>
       
        <link rel="stylesheet" href="https://unpkg.com/mint-ui/lib/style.css">
      
	<title></title>
	<style>
	*{margin:0;padding:0}
     input[type='number'],input[type=text]{ width: 1.5rem; border: 1px solid #555;height: .6rem;line-height: .6rem; font-size: .32rem;}

    @media (-webkit-min-device-pixel-ratio:2),(min-device-pixel-ratio:2){
      [data-dpr="2"]  .picker-toolbar{height:70px;}
      [data-dpr="2"]  .mint-datetime-action{line-height:70px;font-size:.34rem}
      [data-dpr="2"]  .picker-slot{font-size:.32rem}
    }
    @media (-webkit-min-device-pixel-ratio:3),(min-device-pixel-ratio:3){
       [data-dpr="3"] .picker-toolbar{height:80px;}
       [data-dpr="3"]  .mint-datetime-action{line-height:80px;font-size:.34rem}
       [data-dpr="3"]  .picker-slot{font-size:.32rem}
    }

	</style>
</head>
<body>
	<div id="mall" v-cloak>
         
		<div>
             <label>开始时间:</label> <input type="text" @click="$refs.start.open()" v-model="dataObject.createTimeDownLine" name="createTimeDownLine">
             <label>结束时间:</label> <input type="text" @click="$refs.end.open()" v-model="dataObject.createTimeHightLine" name="createTimeHightLine">
        </div>

       
        <mt-datetime-picker
            ref="start"
            type="date"
            v-model="startValue"
            @confirm="getStart"
            year-format="{value} 年"
            month-format="{value} 月"
            date-format="{value} 日"
        ></mt-datetime-picker> 
        <mt-datetime-picker
            ref="end"
            type="date"
            v-model="endValue"
            @confirm="getEnd"
            year-format="{value} 年"
            month-format="{value} 月"
            date-format="{value} 日"
            :start-date="new Date(this.dataObject.createTimeDownLine)"
        ></mt-datetime-picker>
	</div>	
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
    <script src="https://unpkg.com/mint-ui/lib/index.js"></script>
  
   
    <script>   
    var Mall = new Vue({
         el:'#mall',
         data: {
            startValue:new Date(),
            endValue:'',
            dataObject:{
                
                createTimeDownLine:'',
                createTimeHightLine:''
            }
         },
        
         methods:{ 
            getStart (data) {
                this.dataObject.createTimeDownLine = hh.formatDate(data)
            },
            getEnd (data) {
                this.dataObject.createTimeHightLine = hh.formatDate(data)
            }
        }
    })
</script>
</body>
</html>
