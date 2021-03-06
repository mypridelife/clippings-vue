node -v #检测node版本（此条命令非必要）
npm -v #检测npm版本（此条命令非必要）
npm config set registry https://registry.npm.taobao.org #把npm源设置为淘宝源（这个你懂的）
npm config get registry #检测npm是否切换成功（此条命令非必要）

npm install #安装项目中的依赖
npm run build #打包

# node oss-deploy.js #配置oss后打开该行

APP_NAME="kindle.gyh.cool"
dstr=`date +%Y-%m-%d-%H-%M-%S`

mv ./dist /www/wwwroot/${APP_NAME}-${dstr}
rm -rf /www/wwwroot/${APP_NAME}
ln -s /www/wwwroot/${APP_NAME}-${dstr} /www/wwwroot/${APP_NAME}
