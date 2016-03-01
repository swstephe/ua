angular.module 'yw.charts', ['my.core']
.config -> console.log 'yw.charts: config() #1'
.run -> console.log 'yw.charts: run() #1'
.config -> console.log 'yw.charts: config() #2'
.run -> console.log 'yw.charts: run() #2'
