import request from '@/utils/request'

export const listSystemDict = () => {
  return request.get('/system/list')
}
