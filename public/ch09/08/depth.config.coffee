angular.module 'services'
.config [
  'depthProvider'
  (depthProvider) -> depthProvider.setDepthLimit 240
]
